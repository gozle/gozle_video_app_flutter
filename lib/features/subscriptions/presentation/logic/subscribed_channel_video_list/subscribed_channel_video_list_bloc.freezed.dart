// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscribed_channel_video_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubscribedChannelVideoListEvent {
  String get channelId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String channelId) load,
    required TResult Function(String channelId, List<Video> oldVideos) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String channelId)? load,
    TResult? Function(String channelId, List<Video> oldVideos)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String channelId)? load,
    TResult Function(String channelId, List<Video> oldVideos)? loadMore,
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

  @JsonKey(ignore: true)
  $SubscribedChannelVideoListEventCopyWith<SubscribedChannelVideoListEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribedChannelVideoListEventCopyWith<$Res> {
  factory $SubscribedChannelVideoListEventCopyWith(
          SubscribedChannelVideoListEvent value,
          $Res Function(SubscribedChannelVideoListEvent) then) =
      _$SubscribedChannelVideoListEventCopyWithImpl<$Res,
          SubscribedChannelVideoListEvent>;
  @useResult
  $Res call({String channelId});
}

/// @nodoc
class _$SubscribedChannelVideoListEventCopyWithImpl<$Res,
        $Val extends SubscribedChannelVideoListEvent>
    implements $SubscribedChannelVideoListEventCopyWith<$Res> {
  _$SubscribedChannelVideoListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
  }) {
    return _then(_value.copyWith(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadEventCopyWith<$Res>
    implements $SubscribedChannelVideoListEventCopyWith<$Res> {
  factory _$$_LoadEventCopyWith(
          _$_LoadEvent value, $Res Function(_$_LoadEvent) then) =
      __$$_LoadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String channelId});
}

/// @nodoc
class __$$_LoadEventCopyWithImpl<$Res>
    extends _$SubscribedChannelVideoListEventCopyWithImpl<$Res, _$_LoadEvent>
    implements _$$_LoadEventCopyWith<$Res> {
  __$$_LoadEventCopyWithImpl(
      _$_LoadEvent _value, $Res Function(_$_LoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
  }) {
    return _then(_$_LoadEvent(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadEvent implements _LoadEvent {
  const _$_LoadEvent({required this.channelId});

  @override
  final String channelId;

  @override
  String toString() {
    return 'SubscribedChannelVideoListEvent.load(channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadEvent &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadEventCopyWith<_$_LoadEvent> get copyWith =>
      __$$_LoadEventCopyWithImpl<_$_LoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String channelId) load,
    required TResult Function(String channelId, List<Video> oldVideos) loadMore,
  }) {
    return load(channelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String channelId)? load,
    TResult? Function(String channelId, List<Video> oldVideos)? loadMore,
  }) {
    return load?.call(channelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String channelId)? load,
    TResult Function(String channelId, List<Video> oldVideos)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(channelId);
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

abstract class _LoadEvent implements SubscribedChannelVideoListEvent {
  const factory _LoadEvent({required final String channelId}) = _$_LoadEvent;

  @override
  String get channelId;
  @override
  @JsonKey(ignore: true)
  _$$_LoadEventCopyWith<_$_LoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreEventCopyWith<$Res>
    implements $SubscribedChannelVideoListEventCopyWith<$Res> {
  factory _$$_LoadMoreEventCopyWith(
          _$_LoadMoreEvent value, $Res Function(_$_LoadMoreEvent) then) =
      __$$_LoadMoreEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String channelId, List<Video> oldVideos});
}

/// @nodoc
class __$$_LoadMoreEventCopyWithImpl<$Res>
    extends _$SubscribedChannelVideoListEventCopyWithImpl<$Res,
        _$_LoadMoreEvent> implements _$$_LoadMoreEventCopyWith<$Res> {
  __$$_LoadMoreEventCopyWithImpl(
      _$_LoadMoreEvent _value, $Res Function(_$_LoadMoreEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? oldVideos = null,
  }) {
    return _then(_$_LoadMoreEvent(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc

class _$_LoadMoreEvent implements _LoadMoreEvent {
  const _$_LoadMoreEvent(
      {required this.channelId, required final List<Video> oldVideos})
      : _oldVideos = oldVideos;

  @override
  final String channelId;
  final List<Video> _oldVideos;
  @override
  List<Video> get oldVideos {
    if (_oldVideos is EqualUnmodifiableListView) return _oldVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldVideos);
  }

  @override
  String toString() {
    return 'SubscribedChannelVideoListEvent.loadMore(channelId: $channelId, oldVideos: $oldVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMoreEvent &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, channelId, const DeepCollectionEquality().hash(_oldVideos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreEventCopyWith<_$_LoadMoreEvent> get copyWith =>
      __$$_LoadMoreEventCopyWithImpl<_$_LoadMoreEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String channelId) load,
    required TResult Function(String channelId, List<Video> oldVideos) loadMore,
  }) {
    return loadMore(channelId, oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String channelId)? load,
    TResult? Function(String channelId, List<Video> oldVideos)? loadMore,
  }) {
    return loadMore?.call(channelId, oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String channelId)? load,
    TResult Function(String channelId, List<Video> oldVideos)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(channelId, oldVideos);
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

abstract class _LoadMoreEvent implements SubscribedChannelVideoListEvent {
  const factory _LoadMoreEvent(
      {required final String channelId,
      required final List<Video> oldVideos}) = _$_LoadMoreEvent;

  @override
  String get channelId;
  List<Video> get oldVideos;
  @override
  @JsonKey(ignore: true)
  _$$_LoadMoreEventCopyWith<_$_LoadMoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscribedChannelVideoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Video> oldVideos, String channelId) loading,
    required TResult Function(
            List<Video> videos, bool hasReachedMax, String channelId)
        loaded,
    required TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos, String channelId)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult? Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos, String channelId)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribedChannelVideoListStateCopyWith<$Res> {
  factory $SubscribedChannelVideoListStateCopyWith(
          SubscribedChannelVideoListState value,
          $Res Function(SubscribedChannelVideoListState) then) =
      _$SubscribedChannelVideoListStateCopyWithImpl<$Res,
          SubscribedChannelVideoListState>;
}

/// @nodoc
class _$SubscribedChannelVideoListStateCopyWithImpl<$Res,
        $Val extends SubscribedChannelVideoListState>
    implements $SubscribedChannelVideoListStateCopyWith<$Res> {
  _$SubscribedChannelVideoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SubscribedChannelVideoListStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SubscribedChannelVideoListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Video> oldVideos, String channelId) loading,
    required TResult Function(
            List<Video> videos, bool hasReachedMax, String channelId)
        loaded,
    required TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos, String channelId)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult? Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos, String channelId)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubscribedChannelVideoListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> oldVideos, String channelId});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SubscribedChannelVideoListStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
    Object? channelId = null,
  }) {
    return _then(_$_Loading(
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(
      {required final List<Video> oldVideos, required this.channelId})
      : _oldVideos = oldVideos;

  final List<Video> _oldVideos;
  @override
  List<Video> get oldVideos {
    if (_oldVideos is EqualUnmodifiableListView) return _oldVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldVideos);
  }

  @override
  final String channelId;

  @override
  String toString() {
    return 'SubscribedChannelVideoListState.loading(oldVideos: $oldVideos, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_oldVideos), channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Video> oldVideos, String channelId) loading,
    required TResult Function(
            List<Video> videos, bool hasReachedMax, String channelId)
        loaded,
    required TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)
        error,
  }) {
    return loading(oldVideos, channelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos, String channelId)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult? Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
  }) {
    return loading?.call(oldVideos, channelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos, String channelId)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(oldVideos, channelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Loading implements SubscribedChannelVideoListState {
  const factory _Loading(
      {required final List<Video> oldVideos,
      required final String channelId}) = _$_Loading;

  List<Video> get oldVideos;
  String get channelId;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> videos, bool hasReachedMax, String channelId});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$SubscribedChannelVideoListStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? hasReachedMax = null,
    Object? channelId = null,
  }) {
    return _then(_$_Loaded(
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<Video> videos,
      required this.hasReachedMax,
      required this.channelId})
      : _videos = videos;

  final List<Video> _videos;
  @override
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  final bool hasReachedMax;
  @override
  final String channelId;

  @override
  String toString() {
    return 'SubscribedChannelVideoListState.loaded(videos: $videos, hasReachedMax: $hasReachedMax, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_videos), hasReachedMax, channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Video> oldVideos, String channelId) loading,
    required TResult Function(
            List<Video> videos, bool hasReachedMax, String channelId)
        loaded,
    required TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)
        error,
  }) {
    return loaded(videos, hasReachedMax, channelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos, String channelId)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult? Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
  }) {
    return loaded?.call(videos, hasReachedMax, channelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos, String channelId)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(videos, hasReachedMax, channelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Loaded implements SubscribedChannelVideoListState {
  const factory _Loaded(
      {required final List<Video> videos,
      required final bool hasReachedMax,
      required final String channelId}) = _$_Loaded;

  List<Video> get videos;
  bool get hasReachedMax;
  String get channelId;
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
      List<Video> oldVideos,
      SubscribedChannelVideoListEvent lastEvent});

  $SubscribedChannelVideoListEventCopyWith<$Res> get lastEvent;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$SubscribedChannelVideoListStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? falure = null,
    Object? oldVideos = null,
    Object? lastEvent = null,
  }) {
    return _then(_$_Error(
      falure: null == falure
          ? _value.falure
          : falure // ignore: cast_nullable_to_non_nullable
              as Failure,
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      lastEvent: null == lastEvent
          ? _value.lastEvent
          : lastEvent // ignore: cast_nullable_to_non_nullable
              as SubscribedChannelVideoListEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscribedChannelVideoListEventCopyWith<$Res> get lastEvent {
    return $SubscribedChannelVideoListEventCopyWith<$Res>(_value.lastEvent,
        (value) {
      return _then(_value.copyWith(lastEvent: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {required this.falure,
      required final List<Video> oldVideos,
      required this.lastEvent})
      : _oldVideos = oldVideos;

  @override
  final Failure falure;
  final List<Video> _oldVideos;
  @override
  List<Video> get oldVideos {
    if (_oldVideos is EqualUnmodifiableListView) return _oldVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldVideos);
  }

  @override
  final SubscribedChannelVideoListEvent lastEvent;

  @override
  String toString() {
    return 'SubscribedChannelVideoListState.error(falure: $falure, oldVideos: $oldVideos, lastEvent: $lastEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.falure, falure) || other.falure == falure) &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos) &&
            (identical(other.lastEvent, lastEvent) ||
                other.lastEvent == lastEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, falure,
      const DeepCollectionEquality().hash(_oldVideos), lastEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Video> oldVideos, String channelId) loading,
    required TResult Function(
            List<Video> videos, bool hasReachedMax, String channelId)
        loaded,
    required TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)
        error,
  }) {
    return error(falure, oldVideos, lastEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos, String channelId)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult? Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
  }) {
    return error?.call(falure, oldVideos, lastEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos, String channelId)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax, String channelId)?
        loaded,
    TResult Function(Failure falure, List<Video> oldVideos,
            SubscribedChannelVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(falure, oldVideos, lastEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Error implements SubscribedChannelVideoListState {
  const factory _Error(
      {required final Failure falure,
      required final List<Video> oldVideos,
      required final SubscribedChannelVideoListEvent lastEvent}) = _$_Error;

  Failure get falure;
  List<Video> get oldVideos;
  SubscribedChannelVideoListEvent get lastEvent;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
