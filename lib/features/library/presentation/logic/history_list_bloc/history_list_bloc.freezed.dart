// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Video> oldVideos) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Video> oldVideos)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Video> oldVideos)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryListEventCopyWith<$Res> {
  factory $HistoryListEventCopyWith(
          HistoryListEvent value, $Res Function(HistoryListEvent) then) =
      _$HistoryListEventCopyWithImpl<$Res, HistoryListEvent>;
}

/// @nodoc
class _$HistoryListEventCopyWithImpl<$Res, $Val extends HistoryListEvent>
    implements $HistoryListEventCopyWith<$Res> {
  _$HistoryListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$HistoryListEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'HistoryListEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Video> oldVideos) loadMore,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Video> oldVideos)? loadMore,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Video> oldVideos)? loadMore,
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
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements HistoryListEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_LoadMoreCopyWith<$Res> {
  factory _$$_LoadMoreCopyWith(
          _$_LoadMore value, $Res Function(_$_LoadMore) then) =
      __$$_LoadMoreCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> oldVideos});
}

/// @nodoc
class __$$_LoadMoreCopyWithImpl<$Res>
    extends _$HistoryListEventCopyWithImpl<$Res, _$_LoadMore>
    implements _$$_LoadMoreCopyWith<$Res> {
  __$$_LoadMoreCopyWithImpl(
      _$_LoadMore _value, $Res Function(_$_LoadMore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
  }) {
    return _then(_$_LoadMore(
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore({required final List<Video> oldVideos})
      : _oldVideos = oldVideos;

  final List<Video> _oldVideos;
  @override
  List<Video> get oldVideos {
    if (_oldVideos is EqualUnmodifiableListView) return _oldVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldVideos);
  }

  @override
  String toString() {
    return 'HistoryListEvent.loadMore(oldVideos: $oldVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMore &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_oldVideos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      __$$_LoadMoreCopyWithImpl<_$_LoadMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Video> oldVideos) loadMore,
  }) {
    return loadMore(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Video> oldVideos)? loadMore,
  }) {
    return loadMore?.call(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Video> oldVideos)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(oldVideos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements HistoryListEvent {
  const factory _LoadMore({required final List<Video> oldVideos}) = _$_LoadMore;

  List<Video> get oldVideos;
  @JsonKey(ignore: true)
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> videos, bool hasReachedMax) loaded,
    required TResult Function(List<Video> videos) loading,
    required TResult Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult? Function(List<Video> videos)? loading,
    TResult? Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult Function(List<Video> videos)? loading,
    TResult Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryListStateCopyWith<$Res> {
  factory $HistoryListStateCopyWith(
          HistoryListState value, $Res Function(HistoryListState) then) =
      _$HistoryListStateCopyWithImpl<$Res, HistoryListState>;
}

/// @nodoc
class _$HistoryListStateCopyWithImpl<$Res, $Val extends HistoryListState>
    implements $HistoryListStateCopyWith<$Res> {
  _$HistoryListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> videos, bool hasReachedMax});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$HistoryListStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? hasReachedMax = null,
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
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<Video> videos, required this.hasReachedMax})
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
  String toString() {
    return 'HistoryListState.loaded(videos: $videos, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_videos), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> videos, bool hasReachedMax) loaded,
    required TResult Function(List<Video> videos) loading,
    required TResult Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)
        error,
  }) {
    return loaded(videos, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult? Function(List<Video> videos)? loading,
    TResult? Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)?
        error,
  }) {
    return loaded?.call(videos, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult Function(List<Video> videos)? loading,
    TResult Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(videos, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HistoryListState {
  const factory _Loaded(
      {required final List<Video> videos,
      required final bool hasReachedMax}) = _$_Loaded;

  List<Video> get videos;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> videos});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$HistoryListStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
  }) {
    return _then(_$_Loading(
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required final List<Video> videos}) : _videos = videos;

  final List<Video> _videos;
  @override
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'HistoryListState.loading(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> videos, bool hasReachedMax) loaded,
    required TResult Function(List<Video> videos) loading,
    required TResult Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)
        error,
  }) {
    return loading(videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult? Function(List<Video> videos)? loading,
    TResult? Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)?
        error,
  }) {
    return loading?.call(videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult Function(List<Video> videos)? loading,
    TResult Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HistoryListState {
  const factory _Loading({required final List<Video> videos}) = _$_Loading;

  List<Video> get videos;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure});

  $HistoryListEventCopyWith<$Res> get lastEvent;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$HistoryListStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
    Object? lastEvent = null,
    Object? falure = null,
  }) {
    return _then(_$_Error(
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      lastEvent: null == lastEvent
          ? _value.lastEvent
          : lastEvent // ignore: cast_nullable_to_non_nullable
              as HistoryListEvent,
      falure: null == falure
          ? _value.falure
          : falure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryListEventCopyWith<$Res> get lastEvent {
    return $HistoryListEventCopyWith<$Res>(_value.lastEvent, (value) {
      return _then(_value.copyWith(lastEvent: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {required final List<Video> oldVideos,
      required this.lastEvent,
      required this.falure})
      : _oldVideos = oldVideos;

  final List<Video> _oldVideos;
  @override
  List<Video> get oldVideos {
    if (_oldVideos is EqualUnmodifiableListView) return _oldVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldVideos);
  }

  @override
  final HistoryListEvent lastEvent;
  @override
  final Failure falure;

  @override
  String toString() {
    return 'HistoryListState.error(oldVideos: $oldVideos, lastEvent: $lastEvent, falure: $falure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos) &&
            (identical(other.lastEvent, lastEvent) ||
                other.lastEvent == lastEvent) &&
            (identical(other.falure, falure) || other.falure == falure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_oldVideos), lastEvent, falure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> videos, bool hasReachedMax) loaded,
    required TResult Function(List<Video> videos) loading,
    required TResult Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)
        error,
  }) {
    return error(oldVideos, lastEvent, falure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult? Function(List<Video> videos)? loading,
    TResult? Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)?
        error,
  }) {
    return error?.call(oldVideos, lastEvent, falure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult Function(List<Video> videos)? loading,
    TResult Function(
            List<Video> oldVideos, HistoryListEvent lastEvent, Failure falure)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(oldVideos, lastEvent, falure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HistoryListState {
  const factory _Error(
      {required final List<Video> oldVideos,
      required final HistoryListEvent lastEvent,
      required final Failure falure}) = _$_Error;

  List<Video> get oldVideos;
  HistoryListEvent get lastEvent;
  Failure get falure;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
