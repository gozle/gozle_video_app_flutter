import 'package:equatable/equatable.dart';
import 'package:video_gozle/generated/l10n.dart';

abstract class Failure with FailureMessage, EquatableMixin {}

class ServerFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class SocketFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class AuthenticationFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class UnexpectedFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class NotFoundFailure extends Failure {
  @override
  List<Object?> get props => [];
}

mixin FailureMessage {
  String getMessage() {
    if (this is ServerFailure) {
      return S.current.server_error;
    } else if (this is SocketFailure) {
      return S.current.internet_connection_issues;
    } else if (this is AuthenticationFailure) {
      return S.current.authentication_failure;
    } else if (this is NotFoundFailure) {
      return S.current.not_found_error;
    } else {
      return S.current.undefined_issue;
    }
  }
}
