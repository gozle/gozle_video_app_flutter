part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.init() = _UserInitEvent;
  const factory UserEvent.restore() = _UserRestoreEvent;
  const factory UserEvent.login({required OAuthClient oAuthClientData}) = _UserLoginEvent;
  const factory UserEvent.update() = _UserUpdateEvent;
  const factory UserEvent.logout({String? exceptionMessage}) = _UserLogoutEvent;
  const factory UserEvent.skipLogin({required bool skipped}) = _UserSkippedLoginEvent;
}
