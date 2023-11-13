import 'package:dio/dio.dart';
import 'package:video_gozle/core/exception/exception.dart';

class ExceptionUtils {
  ExceptionUtils._();

  static Exception dioErrorHandle(DioException e, StackTrace stacktrace) {
    try {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.unknown) {
        return InternetException();
      } else if (e.response == null) {
        return UnexpectedException();
      } else {
        switch (e.response!.statusCode) {
          case 401:
            {
              return AuthenticationException();
            }
          case 404:
            {
              return NotFoundException();
            }
          case 500:
            {
              return ServerException();
            }
          default:
            {
              return UnexpectedException();
            }
        }
      }
    } catch (e) {
      return UnexpectedException();
    }
  }

  static Exception dioStatusCodeErrorHandle(
    int? statusCode,
  ) {
    switch (statusCode) {
      case 401:
        {
          return AuthenticationException();
        }
      case 404:
        {
          return NotFoundException();
        }
      case 500:
        {
          return ServerException();
        }
      default:
        {
          return AuthenticationException();
        }
    }
  }
}
