// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() restore,
    required TResult Function(OAuthClient oAuthClientData) login,
    required TResult Function() update,
    required TResult Function(String? exceptionMessage) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? restore,
    TResult? Function(OAuthClient oAuthClientData)? login,
    TResult? Function()? update,
    TResult? Function(String? exceptionMessage)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? restore,
    TResult Function(OAuthClient oAuthClientData)? login,
    TResult Function()? update,
    TResult Function(String? exceptionMessage)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitEvent value) init,
    required TResult Function(_UserRestoreEvent value) restore,
    required TResult Function(_UserLoginEvent value) login,
    required TResult Function(_UserUpdateEvent value) update,
    required TResult Function(_UserLogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitEvent value)? init,
    TResult? Function(_UserRestoreEvent value)? restore,
    TResult? Function(_UserLoginEvent value)? login,
    TResult? Function(_UserUpdateEvent value)? update,
    TResult? Function(_UserLogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitEvent value)? init,
    TResult Function(_UserRestoreEvent value)? restore,
    TResult Function(_UserLoginEvent value)? login,
    TResult Function(_UserUpdateEvent value)? update,
    TResult Function(_UserLogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserInitEventCopyWith<$Res> {
  factory _$$_UserInitEventCopyWith(
          _$_UserInitEvent value, $Res Function(_$_UserInitEvent) then) =
      __$$_UserInitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserInitEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserInitEvent>
    implements _$$_UserInitEventCopyWith<$Res> {
  __$$_UserInitEventCopyWithImpl(
      _$_UserInitEvent _value, $Res Function(_$_UserInitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserInitEvent implements _UserInitEvent {
  const _$_UserInitEvent();

  @override
  String toString() {
    return 'UserEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserInitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() restore,
    required TResult Function(OAuthClient oAuthClientData) login,
    required TResult Function() update,
    required TResult Function(String? exceptionMessage) logout,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? restore,
    TResult? Function(OAuthClient oAuthClientData)? login,
    TResult? Function()? update,
    TResult? Function(String? exceptionMessage)? logout,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? restore,
    TResult Function(OAuthClient oAuthClientData)? login,
    TResult Function()? update,
    TResult Function(String? exceptionMessage)? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitEvent value) init,
    required TResult Function(_UserRestoreEvent value) restore,
    required TResult Function(_UserLoginEvent value) login,
    required TResult Function(_UserUpdateEvent value) update,
    required TResult Function(_UserLogoutEvent value) logout,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitEvent value)? init,
    TResult? Function(_UserRestoreEvent value)? restore,
    TResult? Function(_UserLoginEvent value)? login,
    TResult? Function(_UserUpdateEvent value)? update,
    TResult? Function(_UserLogoutEvent value)? logout,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitEvent value)? init,
    TResult Function(_UserRestoreEvent value)? restore,
    TResult Function(_UserLoginEvent value)? login,
    TResult Function(_UserUpdateEvent value)? update,
    TResult Function(_UserLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _UserInitEvent implements UserEvent {
  const factory _UserInitEvent() = _$_UserInitEvent;
}

/// @nodoc
abstract class _$$_UserRestoreEventCopyWith<$Res> {
  factory _$$_UserRestoreEventCopyWith(
          _$_UserRestoreEvent value, $Res Function(_$_UserRestoreEvent) then) =
      __$$_UserRestoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserRestoreEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserRestoreEvent>
    implements _$$_UserRestoreEventCopyWith<$Res> {
  __$$_UserRestoreEventCopyWithImpl(
      _$_UserRestoreEvent _value, $Res Function(_$_UserRestoreEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserRestoreEvent implements _UserRestoreEvent {
  const _$_UserRestoreEvent();

  @override
  String toString() {
    return 'UserEvent.restore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserRestoreEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() restore,
    required TResult Function(OAuthClient oAuthClientData) login,
    required TResult Function() update,
    required TResult Function(String? exceptionMessage) logout,
  }) {
    return restore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? restore,
    TResult? Function(OAuthClient oAuthClientData)? login,
    TResult? Function()? update,
    TResult? Function(String? exceptionMessage)? logout,
  }) {
    return restore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? restore,
    TResult Function(OAuthClient oAuthClientData)? login,
    TResult Function()? update,
    TResult Function(String? exceptionMessage)? logout,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitEvent value) init,
    required TResult Function(_UserRestoreEvent value) restore,
    required TResult Function(_UserLoginEvent value) login,
    required TResult Function(_UserUpdateEvent value) update,
    required TResult Function(_UserLogoutEvent value) logout,
  }) {
    return restore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitEvent value)? init,
    TResult? Function(_UserRestoreEvent value)? restore,
    TResult? Function(_UserLoginEvent value)? login,
    TResult? Function(_UserUpdateEvent value)? update,
    TResult? Function(_UserLogoutEvent value)? logout,
  }) {
    return restore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitEvent value)? init,
    TResult Function(_UserRestoreEvent value)? restore,
    TResult Function(_UserLoginEvent value)? login,
    TResult Function(_UserUpdateEvent value)? update,
    TResult Function(_UserLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }
}

abstract class _UserRestoreEvent implements UserEvent {
  const factory _UserRestoreEvent() = _$_UserRestoreEvent;
}

/// @nodoc
abstract class _$$_UserLoginEventCopyWith<$Res> {
  factory _$$_UserLoginEventCopyWith(
          _$_UserLoginEvent value, $Res Function(_$_UserLoginEvent) then) =
      __$$_UserLoginEventCopyWithImpl<$Res>;
  @useResult
  $Res call({OAuthClient oAuthClientData});
}

/// @nodoc
class __$$_UserLoginEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserLoginEvent>
    implements _$$_UserLoginEventCopyWith<$Res> {
  __$$_UserLoginEventCopyWithImpl(
      _$_UserLoginEvent _value, $Res Function(_$_UserLoginEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oAuthClientData = null,
  }) {
    return _then(_$_UserLoginEvent(
      oAuthClientData: null == oAuthClientData
          ? _value.oAuthClientData
          : oAuthClientData // ignore: cast_nullable_to_non_nullable
              as OAuthClient,
    ));
  }
}

/// @nodoc

class _$_UserLoginEvent implements _UserLoginEvent {
  const _$_UserLoginEvent({required this.oAuthClientData});

  @override
  final OAuthClient oAuthClientData;

  @override
  String toString() {
    return 'UserEvent.login(oAuthClientData: $oAuthClientData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLoginEvent &&
            (identical(other.oAuthClientData, oAuthClientData) ||
                other.oAuthClientData == oAuthClientData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oAuthClientData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLoginEventCopyWith<_$_UserLoginEvent> get copyWith =>
      __$$_UserLoginEventCopyWithImpl<_$_UserLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() restore,
    required TResult Function(OAuthClient oAuthClientData) login,
    required TResult Function() update,
    required TResult Function(String? exceptionMessage) logout,
  }) {
    return login(oAuthClientData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? restore,
    TResult? Function(OAuthClient oAuthClientData)? login,
    TResult? Function()? update,
    TResult? Function(String? exceptionMessage)? logout,
  }) {
    return login?.call(oAuthClientData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? restore,
    TResult Function(OAuthClient oAuthClientData)? login,
    TResult Function()? update,
    TResult Function(String? exceptionMessage)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(oAuthClientData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitEvent value) init,
    required TResult Function(_UserRestoreEvent value) restore,
    required TResult Function(_UserLoginEvent value) login,
    required TResult Function(_UserUpdateEvent value) update,
    required TResult Function(_UserLogoutEvent value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitEvent value)? init,
    TResult? Function(_UserRestoreEvent value)? restore,
    TResult? Function(_UserLoginEvent value)? login,
    TResult? Function(_UserUpdateEvent value)? update,
    TResult? Function(_UserLogoutEvent value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitEvent value)? init,
    TResult Function(_UserRestoreEvent value)? restore,
    TResult Function(_UserLoginEvent value)? login,
    TResult Function(_UserUpdateEvent value)? update,
    TResult Function(_UserLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _UserLoginEvent implements UserEvent {
  const factory _UserLoginEvent({required final OAuthClient oAuthClientData}) =
      _$_UserLoginEvent;

  OAuthClient get oAuthClientData;
  @JsonKey(ignore: true)
  _$$_UserLoginEventCopyWith<_$_UserLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserUpdateEventCopyWith<$Res> {
  factory _$$_UserUpdateEventCopyWith(
          _$_UserUpdateEvent value, $Res Function(_$_UserUpdateEvent) then) =
      __$$_UserUpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserUpdateEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserUpdateEvent>
    implements _$$_UserUpdateEventCopyWith<$Res> {
  __$$_UserUpdateEventCopyWithImpl(
      _$_UserUpdateEvent _value, $Res Function(_$_UserUpdateEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserUpdateEvent implements _UserUpdateEvent {
  const _$_UserUpdateEvent();

  @override
  String toString() {
    return 'UserEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserUpdateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() restore,
    required TResult Function(OAuthClient oAuthClientData) login,
    required TResult Function() update,
    required TResult Function(String? exceptionMessage) logout,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? restore,
    TResult? Function(OAuthClient oAuthClientData)? login,
    TResult? Function()? update,
    TResult? Function(String? exceptionMessage)? logout,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? restore,
    TResult Function(OAuthClient oAuthClientData)? login,
    TResult Function()? update,
    TResult Function(String? exceptionMessage)? logout,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitEvent value) init,
    required TResult Function(_UserRestoreEvent value) restore,
    required TResult Function(_UserLoginEvent value) login,
    required TResult Function(_UserUpdateEvent value) update,
    required TResult Function(_UserLogoutEvent value) logout,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitEvent value)? init,
    TResult? Function(_UserRestoreEvent value)? restore,
    TResult? Function(_UserLoginEvent value)? login,
    TResult? Function(_UserUpdateEvent value)? update,
    TResult? Function(_UserLogoutEvent value)? logout,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitEvent value)? init,
    TResult Function(_UserRestoreEvent value)? restore,
    TResult Function(_UserLoginEvent value)? login,
    TResult Function(_UserUpdateEvent value)? update,
    TResult Function(_UserLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UserUpdateEvent implements UserEvent {
  const factory _UserUpdateEvent() = _$_UserUpdateEvent;
}

/// @nodoc
abstract class _$$_UserLogoutEventCopyWith<$Res> {
  factory _$$_UserLogoutEventCopyWith(
          _$_UserLogoutEvent value, $Res Function(_$_UserLogoutEvent) then) =
      __$$_UserLogoutEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? exceptionMessage});
}

/// @nodoc
class __$$_UserLogoutEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserLogoutEvent>
    implements _$$_UserLogoutEventCopyWith<$Res> {
  __$$_UserLogoutEventCopyWithImpl(
      _$_UserLogoutEvent _value, $Res Function(_$_UserLogoutEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionMessage = freezed,
  }) {
    return _then(_$_UserLogoutEvent(
      exceptionMessage: freezed == exceptionMessage
          ? _value.exceptionMessage
          : exceptionMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserLogoutEvent implements _UserLogoutEvent {
  const _$_UserLogoutEvent({this.exceptionMessage});

  @override
  final String? exceptionMessage;

  @override
  String toString() {
    return 'UserEvent.logout(exceptionMessage: $exceptionMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLogoutEvent &&
            (identical(other.exceptionMessage, exceptionMessage) ||
                other.exceptionMessage == exceptionMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exceptionMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLogoutEventCopyWith<_$_UserLogoutEvent> get copyWith =>
      __$$_UserLogoutEventCopyWithImpl<_$_UserLogoutEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() restore,
    required TResult Function(OAuthClient oAuthClientData) login,
    required TResult Function() update,
    required TResult Function(String? exceptionMessage) logout,
  }) {
    return logout(exceptionMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? restore,
    TResult? Function(OAuthClient oAuthClientData)? login,
    TResult? Function()? update,
    TResult? Function(String? exceptionMessage)? logout,
  }) {
    return logout?.call(exceptionMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? restore,
    TResult Function(OAuthClient oAuthClientData)? login,
    TResult Function()? update,
    TResult Function(String? exceptionMessage)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(exceptionMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitEvent value) init,
    required TResult Function(_UserRestoreEvent value) restore,
    required TResult Function(_UserLoginEvent value) login,
    required TResult Function(_UserUpdateEvent value) update,
    required TResult Function(_UserLogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitEvent value)? init,
    TResult? Function(_UserRestoreEvent value)? restore,
    TResult? Function(_UserLoginEvent value)? login,
    TResult? Function(_UserUpdateEvent value)? update,
    TResult? Function(_UserLogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitEvent value)? init,
    TResult Function(_UserRestoreEvent value)? restore,
    TResult Function(_UserLoginEvent value)? login,
    TResult Function(_UserUpdateEvent value)? update,
    TResult Function(_UserLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _UserLogoutEvent implements UserEvent {
  const factory _UserLogoutEvent({final String? exceptionMessage}) =
      _$_UserLogoutEvent;

  String? get exceptionMessage;
  @JsonKey(ignore: true)
  _$$_UserLogoutEventCopyWith<_$_UserLogoutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OAuthClient? oAuthClientData) unauthenticated,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
    required TResult Function(String errorMessage) notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(User user)? authenticated,
    TResult? Function(String errorMessage)? notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult Function()? loading,
    TResult Function(User user)? authenticated,
    TResult Function(String errorMessage)? notification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUnauthenticatedState value) unauthenticated,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserAuthenticatedState value) authenticated,
    required TResult Function(_UserNotificationState value) notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserAuthenticatedState value)? authenticated,
    TResult? Function(_UserNotificationState value)? notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserAuthenticatedState value)? authenticated,
    TResult Function(_UserNotificationState value)? notification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserUnauthenticatedStateCopyWith<$Res> {
  factory _$$_UserUnauthenticatedStateCopyWith(
          _$_UserUnauthenticatedState value,
          $Res Function(_$_UserUnauthenticatedState) then) =
      __$$_UserUnauthenticatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({OAuthClient? oAuthClientData});
}

/// @nodoc
class __$$_UserUnauthenticatedStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserUnauthenticatedState>
    implements _$$_UserUnauthenticatedStateCopyWith<$Res> {
  __$$_UserUnauthenticatedStateCopyWithImpl(_$_UserUnauthenticatedState _value,
      $Res Function(_$_UserUnauthenticatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oAuthClientData = freezed,
  }) {
    return _then(_$_UserUnauthenticatedState(
      oAuthClientData: freezed == oAuthClientData
          ? _value.oAuthClientData
          : oAuthClientData // ignore: cast_nullable_to_non_nullable
              as OAuthClient?,
    ));
  }
}

/// @nodoc

class _$_UserUnauthenticatedState implements _UserUnauthenticatedState {
  const _$_UserUnauthenticatedState({this.oAuthClientData});

  @override
  final OAuthClient? oAuthClientData;

  @override
  String toString() {
    return 'UserState.unauthenticated(oAuthClientData: $oAuthClientData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserUnauthenticatedState &&
            (identical(other.oAuthClientData, oAuthClientData) ||
                other.oAuthClientData == oAuthClientData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oAuthClientData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserUnauthenticatedStateCopyWith<_$_UserUnauthenticatedState>
      get copyWith => __$$_UserUnauthenticatedStateCopyWithImpl<
          _$_UserUnauthenticatedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OAuthClient? oAuthClientData) unauthenticated,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
    required TResult Function(String errorMessage) notification,
  }) {
    return unauthenticated(oAuthClientData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(User user)? authenticated,
    TResult? Function(String errorMessage)? notification,
  }) {
    return unauthenticated?.call(oAuthClientData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult Function()? loading,
    TResult Function(User user)? authenticated,
    TResult Function(String errorMessage)? notification,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(oAuthClientData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUnauthenticatedState value) unauthenticated,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserAuthenticatedState value) authenticated,
    required TResult Function(_UserNotificationState value) notification,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserAuthenticatedState value)? authenticated,
    TResult? Function(_UserNotificationState value)? notification,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserAuthenticatedState value)? authenticated,
    TResult Function(_UserNotificationState value)? notification,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UserUnauthenticatedState implements UserState {
  const factory _UserUnauthenticatedState(
      {final OAuthClient? oAuthClientData}) = _$_UserUnauthenticatedState;

  OAuthClient? get oAuthClientData;
  @JsonKey(ignore: true)
  _$$_UserUnauthenticatedStateCopyWith<_$_UserUnauthenticatedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserLoadingStateCopyWith<$Res> {
  factory _$$_UserLoadingStateCopyWith(
          _$_UserLoadingState value, $Res Function(_$_UserLoadingState) then) =
      __$$_UserLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLoadingStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserLoadingState>
    implements _$$_UserLoadingStateCopyWith<$Res> {
  __$$_UserLoadingStateCopyWithImpl(
      _$_UserLoadingState _value, $Res Function(_$_UserLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserLoadingState implements _UserLoadingState {
  const _$_UserLoadingState();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OAuthClient? oAuthClientData) unauthenticated,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
    required TResult Function(String errorMessage) notification,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(User user)? authenticated,
    TResult? Function(String errorMessage)? notification,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult Function()? loading,
    TResult Function(User user)? authenticated,
    TResult Function(String errorMessage)? notification,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUnauthenticatedState value) unauthenticated,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserAuthenticatedState value) authenticated,
    required TResult Function(_UserNotificationState value) notification,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserAuthenticatedState value)? authenticated,
    TResult? Function(_UserNotificationState value)? notification,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserAuthenticatedState value)? authenticated,
    TResult Function(_UserNotificationState value)? notification,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserLoadingState implements UserState {
  const factory _UserLoadingState() = _$_UserLoadingState;
}

/// @nodoc
abstract class _$$_UserAuthenticatedStateCopyWith<$Res> {
  factory _$$_UserAuthenticatedStateCopyWith(_$_UserAuthenticatedState value,
          $Res Function(_$_UserAuthenticatedState) then) =
      __$$_UserAuthenticatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_UserAuthenticatedStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserAuthenticatedState>
    implements _$$_UserAuthenticatedStateCopyWith<$Res> {
  __$$_UserAuthenticatedStateCopyWithImpl(_$_UserAuthenticatedState _value,
      $Res Function(_$_UserAuthenticatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UserAuthenticatedState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_UserAuthenticatedState implements _UserAuthenticatedState {
  const _$_UserAuthenticatedState({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAuthenticatedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAuthenticatedStateCopyWith<_$_UserAuthenticatedState> get copyWith =>
      __$$_UserAuthenticatedStateCopyWithImpl<_$_UserAuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OAuthClient? oAuthClientData) unauthenticated,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
    required TResult Function(String errorMessage) notification,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(User user)? authenticated,
    TResult? Function(String errorMessage)? notification,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult Function()? loading,
    TResult Function(User user)? authenticated,
    TResult Function(String errorMessage)? notification,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUnauthenticatedState value) unauthenticated,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserAuthenticatedState value) authenticated,
    required TResult Function(_UserNotificationState value) notification,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserAuthenticatedState value)? authenticated,
    TResult? Function(_UserNotificationState value)? notification,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserAuthenticatedState value)? authenticated,
    TResult Function(_UserNotificationState value)? notification,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _UserAuthenticatedState implements UserState {
  const factory _UserAuthenticatedState({required final User user}) =
      _$_UserAuthenticatedState;

  User get user;
  @JsonKey(ignore: true)
  _$$_UserAuthenticatedStateCopyWith<_$_UserAuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserNotificationStateCopyWith<$Res> {
  factory _$$_UserNotificationStateCopyWith(_$_UserNotificationState value,
          $Res Function(_$_UserNotificationState) then) =
      __$$_UserNotificationStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_UserNotificationStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserNotificationState>
    implements _$$_UserNotificationStateCopyWith<$Res> {
  __$$_UserNotificationStateCopyWithImpl(_$_UserNotificationState _value,
      $Res Function(_$_UserNotificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_UserNotificationState(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserNotificationState implements _UserNotificationState {
  const _$_UserNotificationState(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserState.notification(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNotificationState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserNotificationStateCopyWith<_$_UserNotificationState> get copyWith =>
      __$$_UserNotificationStateCopyWithImpl<_$_UserNotificationState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OAuthClient? oAuthClientData) unauthenticated,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
    required TResult Function(String errorMessage) notification,
  }) {
    return notification(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(User user)? authenticated,
    TResult? Function(String errorMessage)? notification,
  }) {
    return notification?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OAuthClient? oAuthClientData)? unauthenticated,
    TResult Function()? loading,
    TResult Function(User user)? authenticated,
    TResult Function(String errorMessage)? notification,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUnauthenticatedState value) unauthenticated,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserAuthenticatedState value) authenticated,
    required TResult Function(_UserNotificationState value) notification,
  }) {
    return notification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserAuthenticatedState value)? authenticated,
    TResult? Function(_UserNotificationState value)? notification,
  }) {
    return notification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUnauthenticatedState value)? unauthenticated,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserAuthenticatedState value)? authenticated,
    TResult Function(_UserNotificationState value)? notification,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(this);
    }
    return orElse();
  }
}

abstract class _UserNotificationState implements UserState {
  const factory _UserNotificationState(final String errorMessage) =
      _$_UserNotificationState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_UserNotificationStateCopyWith<_$_UserNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
