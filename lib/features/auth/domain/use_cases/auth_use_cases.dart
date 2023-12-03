import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/auth/domain/models/oauth_client_model.dart';
import 'package:video_gozle/features/auth/domain/models/user_model.dart';
import 'package:video_gozle/features/auth/domain/repository/auth_repository.dart';

class AuthUseCases {
  final AuthRepository authRepository;

  AuthUseCases({required this.authRepository});

  Future<Either<Failure, OAuthClient>> getOAuthClient() async {
    return await authRepository.getOAuthClient();
  }

  Future<User?> restoreUser() async {
    return await authRepository.restoreUser();
  }

  Future<void> saveUser({required User user}) async {
    await authRepository.saveUser(user: user);
  }

  Future<void> removeUser() async {
    await authRepository.removeUser();
  }

  Future<Either<Failure, User>> login({
    required String code,
    required String codeVerifier,
    required String redirectUri,
  }) async {
    return await authRepository.login(
      code: code,
      codeVerifier: codeVerifier,
      redirectUri: redirectUri,
    );
  }

  Future<Either<Failure, User>> updateUser() async {
    return await authRepository.updateUser();
  }

  Future<bool?> getSkippedLogin() async {
    return authRepository.getSkippedLogin();
  }

  Future<void> updateSkippedLogin({required bool skipped}) async {
    await authRepository.updateSkippedLogin(skipped: skipped);
  }
}
