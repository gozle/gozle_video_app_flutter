import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/exception/exception.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/auth/data/datasources/local.dart';
import 'package:video_gozle/features/auth/data/datasources/remote.dart';
import 'package:video_gozle/features/auth/domain/models/oauth_client_model.dart';
import 'package:video_gozle/features/auth/domain/repository/auth_repository.dart';

import '../../domain/models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiClient authApiClient;
  final AuthStorage authStorage;

  AuthRepositoryImpl({required this.authApiClient, required this.authStorage});

  @override
  Future<User?> restoreUser() async {
    return await authStorage.readUser();
  }

  @override
  Future<void> saveUser({required User user}) async {
    authStorage.writeUser(user: user);
  }

  @override
  Future<void> removeUser() async {
    authStorage.removeUser();
    authStorage.removeAuthCookie();
  }

  @override
  Future<Either<Failure, OAuthClient>> getOAuthClient() async {
    try {
      final oAuthClientData = await authApiClient.getOAuthClient();
      return right(oAuthClientData);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, User>> login({
    required String code,
    required String codeVerifier,
    required String redirectUri,
  }) async {
    try {
      final (sessionIdCookie, csrftokenCookie) = await authApiClient.loginByCode(
        code: code,
        codeVerifier: codeVerifier,
        redirectUri: redirectUri,
      );

      final sessionId = '${sessionIdCookie.name}=${sessionIdCookie.value}';
      final csrftoken = '${csrftokenCookie.name}=${csrftokenCookie.value}';

      log('SESSION-ID $sessionId \nCSRFTOKEN $csrftoken');

      final authCookie = "$csrftoken; $sessionId";

      final user = await authApiClient.getUser(authCookie: authCookie);

      authStorage.writeAuthCookie(authCookie: authCookie);
      authStorage.writeUser(user: user);

      return right(user);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, User>> updateUser() async {
    try {
      final authCookie = authStorage.readAuthCookie();

      if (authCookie != null) {
        final user = await authApiClient.getUser(
          authCookie: authCookie,
        );

        await authStorage.writeUser(user: user);

        return right(user);
      } else {
        throw AuthenticationException();
      }
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  Future<bool?> getSkippedLogin() async {
    return authStorage.readSkippedLogin();
  }

  @override
  Future<void> updateSkippedLogin({required bool skipped}) async {
    await authStorage.writeSkippedLogin(skipped: skipped);
  }
}
