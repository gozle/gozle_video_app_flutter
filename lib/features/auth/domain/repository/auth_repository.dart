import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/auth/domain/models/oauth_client_model.dart';

import '../models/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, OAuthClient>> getOAuthClient();

  Future<User?> restoreUser();

  Future<void> saveUser({required User user});

  Future<void> removeUser();

  Future<Either<Failure, User>> login({
    required String code,
    required String codeVerifier,
    required String redirectUri,
  });

  Future<Either<Failure, User>> updateUser();
}
