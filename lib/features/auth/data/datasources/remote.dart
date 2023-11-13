import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import 'package:sweet_cookie_jar/sweet_cookie_jar.dart';
import 'package:video_gozle/core/exception/exception_utils.dart';
import 'package:video_gozle/core/rest_api_urls.dart';
import 'package:video_gozle/features/auth/domain/models/oauth_client_model.dart';
import 'package:video_gozle/features/auth/domain/models/user_model.dart';

class AuthApiClient {
  final Dio dio;

  AuthApiClient({required this.dio});

  Future<OAuthClient> getOAuthClient() async {
    try {
      const url = "/get-client";

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        return OAuthClient.fromJson(response.data);
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<(Cookie, Cookie)> loginByCode({
    required String code,
    required String codeVerifier,
    required String redirectUri,
  }) async {
    try {
      final body = {
        'code': code,
        'code_verifier': codeVerifier,
        'redirect_uri': redirectUri,
      };

      final response = await http.post(
        Uri.parse('${RestApiUrls.baseAuthUrl}/login'),
        body: body,
      );

      if (response.statusCode == 200) {
        final cookieJar = SweetCookieJar.from(response: response);
        final sessionId = cookieJar.find(name: 'sessionid');
        final csrftoken = cookieJar.find(name: 'csrftoken');

        return (sessionId, csrftoken);
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<User> getUser({
    required String authCookie,
  }) async {
    try {
      const url = '/get-user';
      final response = await dio.get(
        url,
        options: Options(
          headers: {"cookie": authCookie},
        ),
      );

      if (response.statusCode == 200) {
        return User.fromJson(response.data);
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }
}
