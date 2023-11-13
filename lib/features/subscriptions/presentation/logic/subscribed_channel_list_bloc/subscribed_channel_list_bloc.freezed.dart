// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscribed_channel_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubscribedChannelListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Channel> oldChannels) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Channel> oldChannels)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Channel> oldChannels)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_LoadMoreEvent value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribedChannelListEventCopyWith<$Res> {
  factory $SubscribedChannelListEventCopyWith(SubscribedChannelListEvent value,
          $Res Function(SubscribedChannelListEvent) then) =
      _$SubscribedChannelListEventCopyWithImpl<$Res,
          SubscribedChannelListEvent>;
}

/// @nodoc
class _$SubscribedChannelListEventCopyWithImpl<$Res,
        $Val extends SubscribedChannelListEvent>
    implements $SubscribedChannelListEventCopyWith<$Res> {
  _$SubscribedChannelListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadEventCopyWith<$Res> {
  factory _$$_LoadEventCopyWith(
          _$_LoadEvent value, $Res Function(_$_LoadEvent) then) =
      __$$_LoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadEventCopyWithImpl<$Res>
    extends _$SubscribedChannelListEventCopyWithImpl<$Res, _$_LoadEvent>
    implements _$$_LoadEventCopyWith<$Res> {
  __$$_LoadEventCopyWithImpl(
      _$_LoadEvent _value, $Res Function(_$_LoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadEvent implements _LoadEvent {
  const _$_LoadEvent();

  @override
  String toString() {
    return 'SubscribedChannelListEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Channel> oldChannels) loadMore,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Channel> oldChannels)? loadMore,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Channel> oldChannels)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_LoadMoreEvent value) loadMore,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent implements SubscribedChannelListEvent {
  const factory _LoadEvent() = _$_LoadEvent;
}

/// @nodoc
abstract class _$$_LoadMoreEventCopyWith<$Res> {
  factory _$$_LoadMoreEventCopyWith(
          _$_LoadMoreEvent value, $Res Function(_$_LoadMoreEvent) then) =
      __$$_LoadMoreEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Channel> oldChannels});
}

/// @nodoc
class __$$_LoadMoreEventCopyWithImpl<$Res>
    extends _$SubscribedChannelListEventCopyWithImpl<$Res, _$_LoadMoreEvent>
    implements _$$_LoadMoreEventCopyWith<$Res> {
  __$$_LoadMoreEventCopyWithImpl(
      _$_LoadMoreEvent _value, $Res Function(_$_LoadMoreEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldChannels = null,
  }) {
    return _then(_$_LoadMoreEvent(
      null == oldChannels
          ? _value._oldChannels
          : oldChannels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ));
  }
}

/// @nodoc

class _$_LoadMoreEvent implements _LoadMoreEvent {
  const _$_LoadMoreEvent(final List<Channel> oldChannels)
      : _oldChannels = oldChannels;

  final List<Channel> _oldChannels;
  @override
  List<Channel> get oldChannels {
    if (_oldChannels is EqualUnmodifiableListView) return _oldChannels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldChannels);
  }

  @override
  String toString() {
    return 'SubscribedChannelListEvent.loadMore(oldChannels: $oldChannels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMoreEvent &&
            const DeepCollectionEquality()
                .equals(other._oldChannels, _oldChannels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_oldChannels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreEventCopyWith<_$_LoadMoreEvent> get copyWith =>
      __$$_LoadMoreEventCopyWithImpl<_$_LoadMoreEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Channel> oldChannels) loadMore,
  }) {
    return loadMore(oldChannels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Channel> oldChannels)? loadMore,
  }) {
    return loadMore?.call(oldChannels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Channel> oldChannels)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(oldChannels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_LoadMoreEvent value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreEvent implements SubscribedChannelListEvent {
  const factory _LoadMoreEvent(final List<Channel> oldChannels) =
      _$_LoadMoreEvent;

  List<Channel> get oldChannels;
  @JsonKey(ignore: true)
  _$$_LoadMoreEventCopyWith<_$_LoadMoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscribedChannelListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Channel> oldChannels) loading,
    required TResult Function(List<Channel> channels, bool hasReachedMax)
        loaded,
    required TResult Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Channel> oldChannels)? loading,
    TResult? Function(List<Channel> channels, bool hasReachedMax)? loaded,
    TResult? Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Channel> oldChannels)? loading,
    TResult Function(List<Channel> channels, bool hasReachedMax)? loaded,
    TResult Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribedChannelListStateCopyWith<$Res> {
  factory $SubscribedChannelListStateCopyWith(SubscribedChannelListState value,
          $Res Function(SubscribedChannelListState) then) =
      _$SubscribedChannelListStateCopyWithImpl<$Res,
          SubscribedChannelListState>;
}

/// @nodoc
class _$SubscribedChannelListStateCopyWithImpl<$Res,
        $Val extends SubscribedChannelListState>
    implements $SubscribedChannelListStateCopyWith<$Res> {
  _$SubscribedChannelListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Channel> oldChannels});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SubscribedChannelListStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldChannels = null,
  }) {
    return _then(_$_Loading(
      oldChannels: null == oldChannels
          ? _value._oldChannels
          : oldChannels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required final List<Channel> oldChannels})
      : _oldChannels = oldChannels;

  final List<Channel> _oldChannels;
  @override
  List<Channel> get oldChannels {
    if (_oldChannels is EqualUnmodifiableListView) return _oldChannels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldChannels);
  }

  @override
  String toString() {
    return 'SubscribedChannelListState.loading(oldChannels: $oldChannels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality()
                .equals(other._oldChannels, _oldChannels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_oldChannels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Channel> oldChannels) loading,
    required TResult Function(List<Channel> channels, bool hasReachedMax)
        loaded,
    required TResult Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)
        error,
  }) {
    return loading(oldChannels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Channel> oldChannels)? loading,
    TResult? Function(List<Channel> channels, bool hasReachedMax)? loaded,
    TResult? Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)?
        error,
  }) {
    return loading?.call(oldChannels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Channel> oldChannels)? loading,
    TResult Function(List<Channel> channels, bool hasReachedMax)? loaded,
    TResult Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(oldChannels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SubscribedChannelListState {
  const factory _Loading({required final List<Channel> oldChannels}) =
      _$_Loading;

  List<Channel> get oldChannels;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Channel> channels, bool hasReachedMax});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$SubscribedChannelListStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_Loaded(
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<Channel> channels, required this.hasReachedMax})
      : _channels = channels;

  final List<Channel> _channels;
  @override
  List<Channel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'SubscribedChannelListState.loaded(channels: $channels, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_channels), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Channel> oldChannels) loading,
    required TResult Function(List<Channel> channels, bool hasReachedMax)
        loaded,
    required TResult Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)
        error,
  }) {
    return loaded(channels, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Channel> oldChannels)? loading,
    TResult? Function(List<Channel> channels, bool hasReachedMax)? loaded,
    TResult? Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)?
        error,
  }) {
    return loaded?.call(channels, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Channel> oldChannels)? loading,
    TResult Function(List<Channel> channels, bool hasReachedMax)? loaded,
    TResult Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(channels, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SubscribedChannelListState {
  const factory _Loaded(
      {required final List<Channel> channels,
      required final bool hasReachedMax}) = _$_Loaded;

  List<Channel> get channels;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Failure falure,
      List<Channel> oldChannels,
      SubscribedChannelListEvent lastEvent});

  $SubscribedChannelListEventCopyWith<$Res> get lastEvent;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$SubscribedChannelListStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? falure = null,
    Object? oldChannels = null,
    Object? lastEvent = null,
  }) {
    return _then(_$_Error(
      falure: null == falure
          ? _value.falure
          : falure // ignore: cast_nullable_to_non_nullable
              as Failure,
      oldChannels: null == oldChannels
          ? _value._oldChannels
          : oldChannels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      lastEvent: null == lastEvent
          ? _value.lastEvent
          : lastEvent // ignore: cast_nullable_to_non_nullable
              as SubscribedChannelListEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscribedChannelListEventCopyWith<$Res> get lastEvent {
    return $SubscribedChannelListEventCopyWith<$Res>(_value.lastEvent, (value) {
      return _then(_value.copyWith(lastEvent: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {required this.falure,
      required final List<Channel> oldChannels,
      required this.lastEvent})
      : _oldChannels = oldChannels;

  @override
  final Failure falure;
  final List<Channel> _oldChannels;
  @override
  List<Channel> get oldChannels {
    if (_oldChannels is EqualUnmodifiableListView) return _oldChannels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldChannels);
  }

  @override
  final SubscribedChannelListEvent lastEvent;

  @override
  String toString() {
    return 'SubscribedChannelListState.error(falure: $falure, oldChannels: $oldChannels, lastEvent: $lastEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.falure, falure) || other.falure == falure) &&
            const DeepCollectionEquality()
                .equals(other._oldChannels, _oldChannels) &&
            (identical(other.lastEvent, lastEvent) ||
                other.lastEvent == lastEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, falure,
      const DeepCollectionEquality().hash(_oldChannels), lastEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Channel> oldChannels) loading,
    required TResult Function(List<Channel> channels, bool hasReachedMax)
        loaded,
    required TResult Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)
        error,
  }) {
    return error(falure, oldChannels, lastEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Channel> oldChannels)? loading,
    TResult? Function(List<Channel> channels, bool hasReachedMax)? loaded,
    TResult? Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)?
        error,
  }) {
    return error?.call(falure, oldChannels, lastEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Channel> oldChannels)? loading,
    TResult Function(List<Channel> channels, bool hasReachedMax)? loaded,
    TResult Function(Failure falure, List<Channel> oldChannels,
            SubscribedChannelListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(falure, oldChannels, lastEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SubscribedChannelListState {
  const factory _Error(
      {required final Failure falure,
      required final List<Channel> oldChannels,
      required final SubscribedChannelListEvent lastEvent}) = _$_Error;

  Failure get falure;
  List<Channel> get oldChannels;
  SubscribedChannelListEvent get lastEvent;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
