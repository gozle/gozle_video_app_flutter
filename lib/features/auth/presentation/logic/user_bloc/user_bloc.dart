// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oauth2_client/gozle_oauth2_client.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/auth/domain/use_cases/auth_use_cases.dart';
import 'package:video_gozle/generated/l10n.dart';
import 'package:video_gozle/injection.dart';

import '../../../domain/models/oauth_client_model.dart';
import '../../../domain/models/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState.loading()) {
    on<_UserInitEvent>(_onInit);
    on<_UserRestoreEvent>(_onRestore);
    on<_UserLoginEvent>(_onLogin);
    on<_UserUpdateEvent>(_onUpdate);
    on<_UserLogoutEvent>(_onLogout);
    on<_UserSkippedLoginEvent>(_onSkippedLogin);
  }

  AuthUseCases get authUseCases => locator<AuthUseCases>();

  FutureOr<void> _onRestore(_UserRestoreEvent event, Emitter<UserState> emit) async {
    User? user = await authUseCases.restoreUser();

    if (user != null) {
      emit(UserState.authenticated(user: user));
      add(const UserEvent.update());
    } else {
      var skipped = await authUseCases.getSkippedLogin();
      if (skipped == true) {
        add(const UserEvent.init());
        emit(const UserState.skippedLogin(skipped: true));
        return;
      }
      add(const UserEvent.init());
      emit(const UserState.unauthenticated());
    }
  }

  FutureOr<void> _onLogin(_UserLoginEvent event, Emitter<UserState> emit) async {
    try {
      emit(const UserState.loading());

      const String redirectUrl = 'gozle.video.app://oauth2redirect';
      const String customUriScheme = 'gozle.video.app';

      final oAuthClientData = event.oAuthClientData;

      final oAuth2Client = GozleOAuth2Client(
        authorizeUrl: oAuthClientData.loginUri,
        redirectUri: redirectUrl,
        customUriScheme: customUriScheme,
      );

      final response = await oAuth2Client.getAuthCodeFlow(
        clientId: oAuthClientData.clientId,
        codeVerifier: oAuthClientData.codeVerifier,
        codeChallenge: oAuthClientData.codeChallenge,
        enableState: false,
        enablePKCE: false,
        scopes: ['read', 'write'],
      );

      final result = await authUseCases.login(
        code: response.code!,
        codeVerifier: oAuthClientData.codeVerifier,
        redirectUri: redirectUrl,
      );

      result.fold(
        (failure) {
          emit(UserState.notification(failure.getMessage()));

          emit(const UserState.unauthenticated());

          add(const UserEvent.init());
        },
        (user) {
          emit(UserState.authenticated(user: user));
        },
      );
    } catch (exception) {
      emit(UserState.notification(S.current.something_went_wrong));

      add(const UserEvent.init());
    }
  }

  FutureOr<void> _onInit(_UserInitEvent event, Emitter<UserState> emit) async {
    //
    emit(const UserState.loading());

    final oAuthClientData = await authUseCases.getOAuthClient();

    oAuthClientData.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(UserState.notification(failure.getMessage()));
          emit(const UserState.unauthenticated());
        }
        emit(UserState.notification(failure.getMessage()));
      },
      (oAuthClientData) {
        emit(UserState.unauthenticated(oAuthClientData: oAuthClientData));
      },
    );
  }

  FutureOr<void> _onUpdate(_UserUpdateEvent event, Emitter<UserState> emit) async {
    final result = await authUseCases.updateUser();

    result.fold(
      (failure) {
        if (failure is AuthenticationFailure) {
          add(const UserEvent.logout());
        } else if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        }
      },
      (user) {
        emit(UserState.authenticated(user: user));
      },
    );
  }

  FutureOr<void> _onLogout(_UserLogoutEvent event, Emitter<UserState> emit) {
    authUseCases.removeUser();

    emit(const UserState.unauthenticated());

    add(const UserEvent.init());
  }

  FutureOr<void> _onSkippedLogin(_UserSkippedLoginEvent event, Emitter<UserState> emit) async {
    await authUseCases.updateSkippedLogin(skipped: event.skipped);
    emit(const UserState.skippedLogin(skipped: true));
  }
}
