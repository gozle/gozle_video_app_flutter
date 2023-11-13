// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_later_video_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatchLaterVideoListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWatchLater,
    required TResult Function(List<Video> oldVideos) loadMoreWatchLater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWatchLater,
    TResult? Function(List<Video> oldVideos)? loadMoreWatchLater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWatchLater,
    TResult Function(List<Video> oldVideos)? loadMoreWatchLater,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWatchLater value) loadWatchLater,
    required TResult Function(_LoadMoreWatchLater value) loadMoreWatchLater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWatchLater value)? loadWatchLater,
    TResult? Function(_LoadMoreWatchLater value)? loadMoreWatchLater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWatchLater value)? loadWatchLater,
    TResult Function(_LoadMoreWatchLater value)? loadMoreWatchLater,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchLaterVideoListEventCopyWith<$Res> {
  factory $WatchLaterVideoListEventCopyWith(WatchLaterVideoListEvent value,
          $Res Function(WatchLaterVideoListEvent) then) =
      _$WatchLaterVideoListEventCopyWithImpl<$Res, WatchLaterVideoListEvent>;
}

/// @nodoc
class _$WatchLaterVideoListEventCopyWithImpl<$Res,
        $Val extends WatchLaterVideoListEvent>
    implements $WatchLaterVideoListEventCopyWith<$Res> {
  _$WatchLaterVideoListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadWatchLaterCopyWith<$Res> {
  factory _$$_LoadWatchLaterCopyWith(
          _$_LoadWatchLater value, $Res Function(_$_LoadWatchLater) then) =
      __$$_LoadWatchLaterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadWatchLaterCopyWithImpl<$Res>
    extends _$WatchLaterVideoListEventCopyWithImpl<$Res, _$_LoadWatchLater>
    implements _$$_LoadWatchLaterCopyWith<$Res> {
  __$$_LoadWatchLaterCopyWithImpl(
      _$_LoadWatchLater _value, $Res Function(_$_LoadWatchLater) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadWatchLater implements _LoadWatchLater {
  const _$_LoadWatchLater();

  @override
  String toString() {
    return 'WatchLaterVideoListEvent.loadWatchLater()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadWatchLater);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWatchLater,
    required TResult Function(List<Video> oldVideos) loadMoreWatchLater,
  }) {
    return loadWatchLater();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWatchLater,
    TResult? Function(List<Video> oldVideos)? loadMoreWatchLater,
  }) {
    return loadWatchLater?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWatchLater,
    TResult Function(List<Video> oldVideos)? loadMoreWatchLater,
    required TResult orElse(),
  }) {
    if (loadWatchLater != null) {
      return loadWatchLater();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWatchLater value) loadWatchLater,
    required TResult Function(_LoadMoreWatchLater value) loadMoreWatchLater,
  }) {
    return loadWatchLater(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWatchLater value)? loadWatchLater,
    TResult? Function(_LoadMoreWatchLater value)? loadMoreWatchLater,
  }) {
    return loadWatchLater?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWatchLater value)? loadWatchLater,
    TResult Function(_LoadMoreWatchLater value)? loadMoreWatchLater,
    required TResult orElse(),
  }) {
    if (loadWatchLater != null) {
      return loadWatchLater(this);
    }
    return orElse();
  }
}

abstract class _LoadWatchLater implements WatchLaterVideoListEvent {
  const factory _LoadWatchLater() = _$_LoadWatchLater;
}

/// @nodoc
abstract class _$$_LoadMoreWatchLaterCopyWith<$Res> {
  factory _$$_LoadMoreWatchLaterCopyWith(_$_LoadMoreWatchLater value,
          $Res Function(_$_LoadMoreWatchLater) then) =
      __$$_LoadMoreWatchLaterCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> oldVideos});
}

/// @nodoc
class __$$_LoadMoreWatchLaterCopyWithImpl<$Res>
    extends _$WatchLaterVideoListEventCopyWithImpl<$Res, _$_LoadMoreWatchLater>
    implements _$$_LoadMoreWatchLaterCopyWith<$Res> {
  __$$_LoadMoreWatchLaterCopyWithImpl(
      _$_LoadMoreWatchLater _value, $Res Function(_$_LoadMoreWatchLater) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
  }) {
    return _then(_$_LoadMoreWatchLater(
      null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc

class _$_LoadMoreWatchLater implements _LoadMoreWatchLater {
  const _$_LoadMoreWatchLater(final List<Video> oldVideos)
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
    return 'WatchLaterVideoListEvent.loadMoreWatchLater(oldVideos: $oldVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMoreWatchLater &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_oldVideos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreWatchLaterCopyWith<_$_LoadMoreWatchLater> get copyWith =>
      __$$_LoadMoreWatchLaterCopyWithImpl<_$_LoadMoreWatchLater>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWatchLater,
    required TResult Function(List<Video> oldVideos) loadMoreWatchLater,
  }) {
    return loadMoreWatchLater(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWatchLater,
    TResult? Function(List<Video> oldVideos)? loadMoreWatchLater,
  }) {
    return loadMoreWatchLater?.call(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWatchLater,
    TResult Function(List<Video> oldVideos)? loadMoreWatchLater,
    required TResult orElse(),
  }) {
    if (loadMoreWatchLater != null) {
      return loadMoreWatchLater(oldVideos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWatchLater value) loadWatchLater,
    required TResult Function(_LoadMoreWatchLater value) loadMoreWatchLater,
  }) {
    return loadMoreWatchLater(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWatchLater value)? loadWatchLater,
    TResult? Function(_LoadMoreWatchLater value)? loadMoreWatchLater,
  }) {
    return loadMoreWatchLater?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWatchLater value)? loadWatchLater,
    TResult Function(_LoadMoreWatchLater value)? loadMoreWatchLater,
    required TResult orElse(),
  }) {
    if (loadMoreWatchLater != null) {
      return loadMoreWatchLater(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreWatchLater implements WatchLaterVideoListEvent {
  const factory _LoadMoreWatchLater(final List<Video> oldVideos) =
      _$_LoadMoreWatchLater;

  List<Video> get oldVideos;
  @JsonKey(ignore: true)
  _$$_LoadMoreWatchLaterCopyWith<_$_LoadMoreWatchLater> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WatchLaterVideoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Video> oldVideos) loading,
    required TResult Function(List<Video> videos, bool hasReachedMax) loaded,
    required TResult Function(WatchLaterVideoListEvent lastEvent,
            Failure falure, List<Video> oldVideos)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult? Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
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
abstract class $WatchLaterVideoListStateCopyWith<$Res> {
  factory $WatchLaterVideoListStateCopyWith(WatchLaterVideoListState value,
          $Res Function(WatchLaterVideoListState) then) =
      _$WatchLaterVideoListStateCopyWithImpl<$Res, WatchLaterVideoListState>;
}

/// @nodoc
class _$WatchLaterVideoListStateCopyWithImpl<$Res,
        $Val extends WatchLaterVideoListState>
    implements $WatchLaterVideoListStateCopyWith<$Res> {
  _$WatchLaterVideoListStateCopyWithImpl(this._value, this._then);

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
    extends _$WatchLaterVideoListStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WatchLaterVideoListState.initial()';
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
    required TResult Function(List<Video> oldVideos) loading,
    required TResult Function(List<Video> videos, bool hasReachedMax) loaded,
    required TResult Function(WatchLaterVideoListEvent lastEvent,
            Failure falure, List<Video> oldVideos)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult? Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
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

abstract class _Initial implements WatchLaterVideoListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> oldVideos});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$WatchLaterVideoListStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
  }) {
    return _then(_$_Loading(
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required final List<Video> oldVideos})
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
    return 'WatchLaterVideoListState.loading(oldVideos: $oldVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_oldVideos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Video> oldVideos) loading,
    required TResult Function(List<Video> videos, bool hasReachedMax) loaded,
    required TResult Function(WatchLaterVideoListEvent lastEvent,
            Failure falure, List<Video> oldVideos)
        error,
  }) {
    return loading(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult? Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
        error,
  }) {
    return loading?.call(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(oldVideos);
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

abstract class _Loading implements WatchLaterVideoListState {
  const factory _Loading({required final List<Video> oldVideos}) = _$_Loading;

  List<Video> get oldVideos;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$WatchLaterVideoListStateCopyWithImpl<$Res, _$_Loaded>
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
    return 'WatchLaterVideoListState.loaded(videos: $videos, hasReachedMax: $hasReachedMax)';
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
    required TResult Function() initial,
    required TResult Function(List<Video> oldVideos) loading,
    required TResult Function(List<Video> videos, bool hasReachedMax) loaded,
    required TResult Function(WatchLaterVideoListEvent lastEvent,
            Failure falure, List<Video> oldVideos)
        error,
  }) {
    return loaded(videos, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult? Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
        error,
  }) {
    return loaded?.call(videos, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
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

abstract class _Loaded implements WatchLaterVideoListState {
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
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {WatchLaterVideoListEvent lastEvent,
      Failure falure,
      List<Video> oldVideos});

  $WatchLaterVideoListEventCopyWith<$Res> get lastEvent;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$WatchLaterVideoListStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastEvent = null,
    Object? falure = null,
    Object? oldVideos = null,
  }) {
    return _then(_$_Error(
      lastEvent: null == lastEvent
          ? _value.lastEvent
          : lastEvent // ignore: cast_nullable_to_non_nullable
              as WatchLaterVideoListEvent,
      falure: null == falure
          ? _value.falure
          : falure // ignore: cast_nullable_to_non_nullable
              as Failure,
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WatchLaterVideoListEventCopyWith<$Res> get lastEvent {
    return $WatchLaterVideoListEventCopyWith<$Res>(_value.lastEvent, (value) {
      return _then(_value.copyWith(lastEvent: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {required this.lastEvent,
      required this.falure,
      required final List<Video> oldVideos})
      : _oldVideos = oldVideos;

  @override
  final WatchLaterVideoListEvent lastEvent;
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
  String toString() {
    return 'WatchLaterVideoListState.error(lastEvent: $lastEvent, falure: $falure, oldVideos: $oldVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.lastEvent, lastEvent) ||
                other.lastEvent == lastEvent) &&
            (identical(other.falure, falure) || other.falure == falure) &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastEvent, falure,
      const DeepCollectionEquality().hash(_oldVideos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Video> oldVideos) loading,
    required TResult Function(List<Video> videos, bool hasReachedMax) loaded,
    required TResult Function(WatchLaterVideoListEvent lastEvent,
            Failure falure, List<Video> oldVideos)
        error,
  }) {
    return error(lastEvent, falure, oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Video> oldVideos)? loading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult? Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
        error,
  }) {
    return error?.call(lastEvent, falure, oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Video> oldVideos)? loading,
    TResult Function(List<Video> videos, bool hasReachedMax)? loaded,
    TResult Function(WatchLaterVideoListEvent lastEvent, Failure falure,
            List<Video> oldVideos)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(lastEvent, falure, oldVideos);
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

abstract class _Error implements WatchLaterVideoListState {
  const factory _Error(
      {required final WatchLaterVideoListEvent lastEvent,
      required final Failure falure,
      required final List<Video> oldVideos}) = _$_Error;

  WatchLaterVideoListEvent get lastEvent;
  Failure get falure;
  List<Video> get oldVideos;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
