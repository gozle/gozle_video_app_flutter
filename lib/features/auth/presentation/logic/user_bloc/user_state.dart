part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.unauthenticated({OAuthClient? oAuthClientData}) =
      _UserUnauthenticatedState;

  const factory UserState.loading() = _UserLoadingState;

  const factory UserState.authenticated({required User user}) =
      _UserAuthenticatedState;

  const factory UserState.notification(String errorMessage) =
      _UserNotificationState;
}
