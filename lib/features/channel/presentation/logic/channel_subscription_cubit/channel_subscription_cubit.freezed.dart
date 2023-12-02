// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_subscription_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelSubscriptionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribed value)? subscribed,
    TResult? Function(_Unsubscribed value)? unsubscribed,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelSubscriptionStateCopyWith<$Res> {
  factory $ChannelSubscriptionStateCopyWith(ChannelSubscriptionState value,
          $Res Function(ChannelSubscriptionState) then) =
      _$ChannelSubscriptionStateCopyWithImpl<$Res, ChannelSubscriptionState>;
}

/// @nodoc
class _$ChannelSubscriptionStateCopyWithImpl<$Res,
        $Val extends ChannelSubscriptionState>
    implements $ChannelSubscriptionStateCopyWith<$Res> {
  _$ChannelSubscriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SubscribedCopyWith<$Res> {
  factory _$$_SubscribedCopyWith(
          _$_Subscribed value, $Res Function(_$_Subscribed) then) =
      __$$_SubscribedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubscribedCopyWithImpl<$Res>
    extends _$ChannelSubscriptionStateCopyWithImpl<$Res, _$_Subscribed>
    implements _$$_SubscribedCopyWith<$Res> {
  __$$_SubscribedCopyWithImpl(
      _$_Subscribed _value, $Res Function(_$_Subscribed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Subscribed implements _Subscribed {
  const _$_Subscribed();

  @override
  String toString() {
    return 'ChannelSubscriptionState.subscribed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Subscribed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function() unauthenticated,
  }) {
    return subscribed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function()? unauthenticated,
  }) {
    return subscribed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribed value)? subscribed,
    TResult? Function(_Unsubscribed value)? unsubscribed,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
  }) {
    return subscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class _Subscribed implements ChannelSubscriptionState {
  const factory _Subscribed() = _$_Subscribed;
}

/// @nodoc
abstract class _$$_UnsubscribedCopyWith<$Res> {
  factory _$$_UnsubscribedCopyWith(
          _$_Unsubscribed value, $Res Function(_$_Unsubscribed) then) =
      __$$_UnsubscribedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnsubscribedCopyWithImpl<$Res>
    extends _$ChannelSubscriptionStateCopyWithImpl<$Res, _$_Unsubscribed>
    implements _$$_UnsubscribedCopyWith<$Res> {
  __$$_UnsubscribedCopyWithImpl(
      _$_Unsubscribed _value, $Res Function(_$_Unsubscribed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unsubscribed implements _Unsubscribed {
  const _$_Unsubscribed();

  @override
  String toString() {
    return 'ChannelSubscriptionState.unsubscribed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unsubscribed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function() unauthenticated,
  }) {
    return unsubscribed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function()? unauthenticated,
  }) {
    return unsubscribed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) {
    return unsubscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribed value)? subscribed,
    TResult? Function(_Unsubscribed value)? unsubscribed,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
  }) {
    return unsubscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed(this);
    }
    return orElse();
  }
}

abstract class _Unsubscribed implements ChannelSubscriptionState {
  const factory _Unsubscribed() = _$_Unsubscribed;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$ChannelSubscriptionStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated();

  @override
  String toString() {
    return 'ChannelSubscriptionState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribed value)? subscribed,
    TResult? Function(_Unsubscribed value)? unsubscribed,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements ChannelSubscriptionState {
  const factory _UnAuthenticated() = _$_UnAuthenticated;
}
