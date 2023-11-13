// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_video_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuggestedVideoListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() suggestedLoad,
    required TResult Function(List<Video> oldVideos) suggestedLoadMore,
    required TResult Function(VideoCategory category) byCategoryload,
    required TResult Function(List<Video> oldVideos, VideoCategory category)
        byCategoryloadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? suggestedLoad,
    TResult? Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult? Function(VideoCategory category)? byCategoryload,
    TResult? Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? suggestedLoad,
    TResult Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult Function(VideoCategory category)? byCategoryload,
    TResult Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) suggestedLoad,
    required TResult Function(_LoadMoreEvent value) suggestedLoadMore,
    required TResult Function(_ByCategoryLoadEvent value) byCategoryload,
    required TResult Function(_ByCategoryLoadMoreEvent value)
        byCategoryloadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? suggestedLoad,
    TResult? Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult? Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult? Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? suggestedLoad,
    TResult Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestedVideoListEventCopyWith<$Res> {
  factory $SuggestedVideoListEventCopyWith(SuggestedVideoListEvent value,
          $Res Function(SuggestedVideoListEvent) then) =
      _$SuggestedVideoListEventCopyWithImpl<$Res, SuggestedVideoListEvent>;
}

/// @nodoc
class _$SuggestedVideoListEventCopyWithImpl<$Res,
        $Val extends SuggestedVideoListEvent>
    implements $SuggestedVideoListEventCopyWith<$Res> {
  _$SuggestedVideoListEventCopyWithImpl(this._value, this._then);

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
    extends _$SuggestedVideoListEventCopyWithImpl<$Res, _$_LoadEvent>
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
    return 'SuggestedVideoListEvent.suggestedLoad()';
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
    required TResult Function() suggestedLoad,
    required TResult Function(List<Video> oldVideos) suggestedLoadMore,
    required TResult Function(VideoCategory category) byCategoryload,
    required TResult Function(List<Video> oldVideos, VideoCategory category)
        byCategoryloadMore,
  }) {
    return suggestedLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? suggestedLoad,
    TResult? Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult? Function(VideoCategory category)? byCategoryload,
    TResult? Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
  }) {
    return suggestedLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? suggestedLoad,
    TResult Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult Function(VideoCategory category)? byCategoryload,
    TResult Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
    required TResult orElse(),
  }) {
    if (suggestedLoad != null) {
      return suggestedLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) suggestedLoad,
    required TResult Function(_LoadMoreEvent value) suggestedLoadMore,
    required TResult Function(_ByCategoryLoadEvent value) byCategoryload,
    required TResult Function(_ByCategoryLoadMoreEvent value)
        byCategoryloadMore,
  }) {
    return suggestedLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? suggestedLoad,
    TResult? Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult? Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult? Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
  }) {
    return suggestedLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? suggestedLoad,
    TResult Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
    required TResult orElse(),
  }) {
    if (suggestedLoad != null) {
      return suggestedLoad(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent implements SuggestedVideoListEvent {
  const factory _LoadEvent() = _$_LoadEvent;
}

/// @nodoc
abstract class _$$_LoadMoreEventCopyWith<$Res> {
  factory _$$_LoadMoreEventCopyWith(
          _$_LoadMoreEvent value, $Res Function(_$_LoadMoreEvent) then) =
      __$$_LoadMoreEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> oldVideos});
}

/// @nodoc
class __$$_LoadMoreEventCopyWithImpl<$Res>
    extends _$SuggestedVideoListEventCopyWithImpl<$Res, _$_LoadMoreEvent>
    implements _$$_LoadMoreEventCopyWith<$Res> {
  __$$_LoadMoreEventCopyWithImpl(
      _$_LoadMoreEvent _value, $Res Function(_$_LoadMoreEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
  }) {
    return _then(_$_LoadMoreEvent(
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc

class _$_LoadMoreEvent implements _LoadMoreEvent {
  const _$_LoadMoreEvent({required final List<Video> oldVideos})
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
    return 'SuggestedVideoListEvent.suggestedLoadMore(oldVideos: $oldVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMoreEvent &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_oldVideos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreEventCopyWith<_$_LoadMoreEvent> get copyWith =>
      __$$_LoadMoreEventCopyWithImpl<_$_LoadMoreEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() suggestedLoad,
    required TResult Function(List<Video> oldVideos) suggestedLoadMore,
    required TResult Function(VideoCategory category) byCategoryload,
    required TResult Function(List<Video> oldVideos, VideoCategory category)
        byCategoryloadMore,
  }) {
    return suggestedLoadMore(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? suggestedLoad,
    TResult? Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult? Function(VideoCategory category)? byCategoryload,
    TResult? Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
  }) {
    return suggestedLoadMore?.call(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? suggestedLoad,
    TResult Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult Function(VideoCategory category)? byCategoryload,
    TResult Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
    required TResult orElse(),
  }) {
    if (suggestedLoadMore != null) {
      return suggestedLoadMore(oldVideos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) suggestedLoad,
    required TResult Function(_LoadMoreEvent value) suggestedLoadMore,
    required TResult Function(_ByCategoryLoadEvent value) byCategoryload,
    required TResult Function(_ByCategoryLoadMoreEvent value)
        byCategoryloadMore,
  }) {
    return suggestedLoadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? suggestedLoad,
    TResult? Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult? Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult? Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
  }) {
    return suggestedLoadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? suggestedLoad,
    TResult Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
    required TResult orElse(),
  }) {
    if (suggestedLoadMore != null) {
      return suggestedLoadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreEvent implements SuggestedVideoListEvent {
  const factory _LoadMoreEvent({required final List<Video> oldVideos}) =
      _$_LoadMoreEvent;

  List<Video> get oldVideos;
  @JsonKey(ignore: true)
  _$$_LoadMoreEventCopyWith<_$_LoadMoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ByCategoryLoadEventCopyWith<$Res> {
  factory _$$_ByCategoryLoadEventCopyWith(_$_ByCategoryLoadEvent value,
          $Res Function(_$_ByCategoryLoadEvent) then) =
      __$$_ByCategoryLoadEventCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoCategory category});
}

/// @nodoc
class __$$_ByCategoryLoadEventCopyWithImpl<$Res>
    extends _$SuggestedVideoListEventCopyWithImpl<$Res, _$_ByCategoryLoadEvent>
    implements _$$_ByCategoryLoadEventCopyWith<$Res> {
  __$$_ByCategoryLoadEventCopyWithImpl(_$_ByCategoryLoadEvent _value,
      $Res Function(_$_ByCategoryLoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_ByCategoryLoadEvent(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as VideoCategory,
    ));
  }
}

/// @nodoc

class _$_ByCategoryLoadEvent implements _ByCategoryLoadEvent {
  const _$_ByCategoryLoadEvent({required this.category});

  @override
  final VideoCategory category;

  @override
  String toString() {
    return 'SuggestedVideoListEvent.byCategoryload(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ByCategoryLoadEvent &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ByCategoryLoadEventCopyWith<_$_ByCategoryLoadEvent> get copyWith =>
      __$$_ByCategoryLoadEventCopyWithImpl<_$_ByCategoryLoadEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() suggestedLoad,
    required TResult Function(List<Video> oldVideos) suggestedLoadMore,
    required TResult Function(VideoCategory category) byCategoryload,
    required TResult Function(List<Video> oldVideos, VideoCategory category)
        byCategoryloadMore,
  }) {
    return byCategoryload(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? suggestedLoad,
    TResult? Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult? Function(VideoCategory category)? byCategoryload,
    TResult? Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
  }) {
    return byCategoryload?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? suggestedLoad,
    TResult Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult Function(VideoCategory category)? byCategoryload,
    TResult Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
    required TResult orElse(),
  }) {
    if (byCategoryload != null) {
      return byCategoryload(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) suggestedLoad,
    required TResult Function(_LoadMoreEvent value) suggestedLoadMore,
    required TResult Function(_ByCategoryLoadEvent value) byCategoryload,
    required TResult Function(_ByCategoryLoadMoreEvent value)
        byCategoryloadMore,
  }) {
    return byCategoryload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? suggestedLoad,
    TResult? Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult? Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult? Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
  }) {
    return byCategoryload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? suggestedLoad,
    TResult Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
    required TResult orElse(),
  }) {
    if (byCategoryload != null) {
      return byCategoryload(this);
    }
    return orElse();
  }
}

abstract class _ByCategoryLoadEvent implements SuggestedVideoListEvent {
  const factory _ByCategoryLoadEvent({required final VideoCategory category}) =
      _$_ByCategoryLoadEvent;

  VideoCategory get category;
  @JsonKey(ignore: true)
  _$$_ByCategoryLoadEventCopyWith<_$_ByCategoryLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ByCategoryLoadMoreEventCopyWith<$Res> {
  factory _$$_ByCategoryLoadMoreEventCopyWith(_$_ByCategoryLoadMoreEvent value,
          $Res Function(_$_ByCategoryLoadMoreEvent) then) =
      __$$_ByCategoryLoadMoreEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> oldVideos, VideoCategory category});
}

/// @nodoc
class __$$_ByCategoryLoadMoreEventCopyWithImpl<$Res>
    extends _$SuggestedVideoListEventCopyWithImpl<$Res,
        _$_ByCategoryLoadMoreEvent>
    implements _$$_ByCategoryLoadMoreEventCopyWith<$Res> {
  __$$_ByCategoryLoadMoreEventCopyWithImpl(_$_ByCategoryLoadMoreEvent _value,
      $Res Function(_$_ByCategoryLoadMoreEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
    Object? category = null,
  }) {
    return _then(_$_ByCategoryLoadMoreEvent(
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as VideoCategory,
    ));
  }
}

/// @nodoc

class _$_ByCategoryLoadMoreEvent implements _ByCategoryLoadMoreEvent {
  const _$_ByCategoryLoadMoreEvent(
      {required final List<Video> oldVideos, required this.category})
      : _oldVideos = oldVideos;

  final List<Video> _oldVideos;
  @override
  List<Video> get oldVideos {
    if (_oldVideos is EqualUnmodifiableListView) return _oldVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldVideos);
  }

  @override
  final VideoCategory category;

  @override
  String toString() {
    return 'SuggestedVideoListEvent.byCategoryloadMore(oldVideos: $oldVideos, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ByCategoryLoadMoreEvent &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_oldVideos), category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ByCategoryLoadMoreEventCopyWith<_$_ByCategoryLoadMoreEvent>
      get copyWith =>
          __$$_ByCategoryLoadMoreEventCopyWithImpl<_$_ByCategoryLoadMoreEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() suggestedLoad,
    required TResult Function(List<Video> oldVideos) suggestedLoadMore,
    required TResult Function(VideoCategory category) byCategoryload,
    required TResult Function(List<Video> oldVideos, VideoCategory category)
        byCategoryloadMore,
  }) {
    return byCategoryloadMore(oldVideos, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? suggestedLoad,
    TResult? Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult? Function(VideoCategory category)? byCategoryload,
    TResult? Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
  }) {
    return byCategoryloadMore?.call(oldVideos, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? suggestedLoad,
    TResult Function(List<Video> oldVideos)? suggestedLoadMore,
    TResult Function(VideoCategory category)? byCategoryload,
    TResult Function(List<Video> oldVideos, VideoCategory category)?
        byCategoryloadMore,
    required TResult orElse(),
  }) {
    if (byCategoryloadMore != null) {
      return byCategoryloadMore(oldVideos, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) suggestedLoad,
    required TResult Function(_LoadMoreEvent value) suggestedLoadMore,
    required TResult Function(_ByCategoryLoadEvent value) byCategoryload,
    required TResult Function(_ByCategoryLoadMoreEvent value)
        byCategoryloadMore,
  }) {
    return byCategoryloadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? suggestedLoad,
    TResult? Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult? Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult? Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
  }) {
    return byCategoryloadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? suggestedLoad,
    TResult Function(_LoadMoreEvent value)? suggestedLoadMore,
    TResult Function(_ByCategoryLoadEvent value)? byCategoryload,
    TResult Function(_ByCategoryLoadMoreEvent value)? byCategoryloadMore,
    required TResult orElse(),
  }) {
    if (byCategoryloadMore != null) {
      return byCategoryloadMore(this);
    }
    return orElse();
  }
}

abstract class _ByCategoryLoadMoreEvent implements SuggestedVideoListEvent {
  const factory _ByCategoryLoadMoreEvent(
      {required final List<Video> oldVideos,
      required final VideoCategory category}) = _$_ByCategoryLoadMoreEvent;

  List<Video> get oldVideos;
  VideoCategory get category;
  @JsonKey(ignore: true)
  _$$_ByCategoryLoadMoreEventCopyWith<_$_ByCategoryLoadMoreEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SuggestedVideoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> oldVideos) suggestedLoading,
    required TResult Function(List<Video> videos, bool hasReachedMax)
        suggestedLoaded,
    required TResult Function(List<Video> oldVideos, VideoCategory? category)
        categoryLoading,
    required TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)
        byCategoryLoaded,
    required TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> oldVideos)? suggestedLoading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult? Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult? Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult? Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> oldVideos)? suggestedLoading,
    TResult Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopularLoadingState value) suggestedLoading,
    required TResult Function(_PopularLoadedState value) suggestedLoaded,
    required TResult Function(_ByCategoryLoadingState value) categoryLoading,
    required TResult Function(_ByCategoryLoadedState value) byCategoryLoaded,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PopularLoadingState value)? suggestedLoading,
    TResult? Function(_PopularLoadedState value)? suggestedLoaded,
    TResult? Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult? Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PopularLoadingState value)? suggestedLoading,
    TResult Function(_PopularLoadedState value)? suggestedLoaded,
    TResult Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestedVideoListStateCopyWith<$Res> {
  factory $SuggestedVideoListStateCopyWith(SuggestedVideoListState value,
          $Res Function(SuggestedVideoListState) then) =
      _$SuggestedVideoListStateCopyWithImpl<$Res, SuggestedVideoListState>;
}

/// @nodoc
class _$SuggestedVideoListStateCopyWithImpl<$Res,
        $Val extends SuggestedVideoListState>
    implements $SuggestedVideoListStateCopyWith<$Res> {
  _$SuggestedVideoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PopularLoadingStateCopyWith<$Res> {
  factory _$$_PopularLoadingStateCopyWith(_$_PopularLoadingState value,
          $Res Function(_$_PopularLoadingState) then) =
      __$$_PopularLoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> oldVideos});
}

/// @nodoc
class __$$_PopularLoadingStateCopyWithImpl<$Res>
    extends _$SuggestedVideoListStateCopyWithImpl<$Res, _$_PopularLoadingState>
    implements _$$_PopularLoadingStateCopyWith<$Res> {
  __$$_PopularLoadingStateCopyWithImpl(_$_PopularLoadingState _value,
      $Res Function(_$_PopularLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
  }) {
    return _then(_$_PopularLoadingState(
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc

class _$_PopularLoadingState implements _PopularLoadingState {
  const _$_PopularLoadingState({required final List<Video> oldVideos})
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
    return 'SuggestedVideoListState.suggestedLoading(oldVideos: $oldVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularLoadingState &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_oldVideos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PopularLoadingStateCopyWith<_$_PopularLoadingState> get copyWith =>
      __$$_PopularLoadingStateCopyWithImpl<_$_PopularLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> oldVideos) suggestedLoading,
    required TResult Function(List<Video> videos, bool hasReachedMax)
        suggestedLoaded,
    required TResult Function(List<Video> oldVideos, VideoCategory? category)
        categoryLoading,
    required TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)
        byCategoryLoaded,
    required TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)
        error,
  }) {
    return suggestedLoading(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> oldVideos)? suggestedLoading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult? Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult? Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult? Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
  }) {
    return suggestedLoading?.call(oldVideos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> oldVideos)? suggestedLoading,
    TResult Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (suggestedLoading != null) {
      return suggestedLoading(oldVideos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopularLoadingState value) suggestedLoading,
    required TResult Function(_PopularLoadedState value) suggestedLoaded,
    required TResult Function(_ByCategoryLoadingState value) categoryLoading,
    required TResult Function(_ByCategoryLoadedState value) byCategoryLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return suggestedLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PopularLoadingState value)? suggestedLoading,
    TResult? Function(_PopularLoadedState value)? suggestedLoaded,
    TResult? Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult? Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return suggestedLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PopularLoadingState value)? suggestedLoading,
    TResult Function(_PopularLoadedState value)? suggestedLoaded,
    TResult Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (suggestedLoading != null) {
      return suggestedLoading(this);
    }
    return orElse();
  }
}

abstract class _PopularLoadingState implements SuggestedVideoListState {
  const factory _PopularLoadingState({required final List<Video> oldVideos}) =
      _$_PopularLoadingState;

  List<Video> get oldVideos;
  @JsonKey(ignore: true)
  _$$_PopularLoadingStateCopyWith<_$_PopularLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PopularLoadedStateCopyWith<$Res> {
  factory _$$_PopularLoadedStateCopyWith(_$_PopularLoadedState value,
          $Res Function(_$_PopularLoadedState) then) =
      __$$_PopularLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> videos, bool hasReachedMax});
}

/// @nodoc
class __$$_PopularLoadedStateCopyWithImpl<$Res>
    extends _$SuggestedVideoListStateCopyWithImpl<$Res, _$_PopularLoadedState>
    implements _$$_PopularLoadedStateCopyWith<$Res> {
  __$$_PopularLoadedStateCopyWithImpl(
      _$_PopularLoadedState _value, $Res Function(_$_PopularLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_PopularLoadedState(
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

class _$_PopularLoadedState implements _PopularLoadedState {
  const _$_PopularLoadedState(
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
    return 'SuggestedVideoListState.suggestedLoaded(videos: $videos, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularLoadedState &&
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
  _$$_PopularLoadedStateCopyWith<_$_PopularLoadedState> get copyWith =>
      __$$_PopularLoadedStateCopyWithImpl<_$_PopularLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> oldVideos) suggestedLoading,
    required TResult Function(List<Video> videos, bool hasReachedMax)
        suggestedLoaded,
    required TResult Function(List<Video> oldVideos, VideoCategory? category)
        categoryLoading,
    required TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)
        byCategoryLoaded,
    required TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)
        error,
  }) {
    return suggestedLoaded(videos, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> oldVideos)? suggestedLoading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult? Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult? Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult? Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
  }) {
    return suggestedLoaded?.call(videos, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> oldVideos)? suggestedLoading,
    TResult Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (suggestedLoaded != null) {
      return suggestedLoaded(videos, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopularLoadingState value) suggestedLoading,
    required TResult Function(_PopularLoadedState value) suggestedLoaded,
    required TResult Function(_ByCategoryLoadingState value) categoryLoading,
    required TResult Function(_ByCategoryLoadedState value) byCategoryLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return suggestedLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PopularLoadingState value)? suggestedLoading,
    TResult? Function(_PopularLoadedState value)? suggestedLoaded,
    TResult? Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult? Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return suggestedLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PopularLoadingState value)? suggestedLoading,
    TResult Function(_PopularLoadedState value)? suggestedLoaded,
    TResult Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (suggestedLoaded != null) {
      return suggestedLoaded(this);
    }
    return orElse();
  }
}

abstract class _PopularLoadedState implements SuggestedVideoListState {
  const factory _PopularLoadedState(
      {required final List<Video> videos,
      required final bool hasReachedMax}) = _$_PopularLoadedState;

  List<Video> get videos;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_PopularLoadedStateCopyWith<_$_PopularLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ByCategoryLoadingStateCopyWith<$Res> {
  factory _$$_ByCategoryLoadingStateCopyWith(_$_ByCategoryLoadingState value,
          $Res Function(_$_ByCategoryLoadingState) then) =
      __$$_ByCategoryLoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> oldVideos, VideoCategory? category});
}

/// @nodoc
class __$$_ByCategoryLoadingStateCopyWithImpl<$Res>
    extends _$SuggestedVideoListStateCopyWithImpl<$Res,
        _$_ByCategoryLoadingState>
    implements _$$_ByCategoryLoadingStateCopyWith<$Res> {
  __$$_ByCategoryLoadingStateCopyWithImpl(_$_ByCategoryLoadingState _value,
      $Res Function(_$_ByCategoryLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
    Object? category = freezed,
  }) {
    return _then(_$_ByCategoryLoadingState(
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as VideoCategory?,
    ));
  }
}

/// @nodoc

class _$_ByCategoryLoadingState implements _ByCategoryLoadingState {
  const _$_ByCategoryLoadingState(
      {required final List<Video> oldVideos, this.category})
      : _oldVideos = oldVideos;

  final List<Video> _oldVideos;
  @override
  List<Video> get oldVideos {
    if (_oldVideos is EqualUnmodifiableListView) return _oldVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldVideos);
  }

  @override
  final VideoCategory? category;

  @override
  String toString() {
    return 'SuggestedVideoListState.categoryLoading(oldVideos: $oldVideos, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ByCategoryLoadingState &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_oldVideos), category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ByCategoryLoadingStateCopyWith<_$_ByCategoryLoadingState> get copyWith =>
      __$$_ByCategoryLoadingStateCopyWithImpl<_$_ByCategoryLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> oldVideos) suggestedLoading,
    required TResult Function(List<Video> videos, bool hasReachedMax)
        suggestedLoaded,
    required TResult Function(List<Video> oldVideos, VideoCategory? category)
        categoryLoading,
    required TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)
        byCategoryLoaded,
    required TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)
        error,
  }) {
    return categoryLoading(oldVideos, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> oldVideos)? suggestedLoading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult? Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult? Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult? Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
  }) {
    return categoryLoading?.call(oldVideos, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> oldVideos)? suggestedLoading,
    TResult Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (categoryLoading != null) {
      return categoryLoading(oldVideos, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopularLoadingState value) suggestedLoading,
    required TResult Function(_PopularLoadedState value) suggestedLoaded,
    required TResult Function(_ByCategoryLoadingState value) categoryLoading,
    required TResult Function(_ByCategoryLoadedState value) byCategoryLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return categoryLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PopularLoadingState value)? suggestedLoading,
    TResult? Function(_PopularLoadedState value)? suggestedLoaded,
    TResult? Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult? Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return categoryLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PopularLoadingState value)? suggestedLoading,
    TResult Function(_PopularLoadedState value)? suggestedLoaded,
    TResult Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (categoryLoading != null) {
      return categoryLoading(this);
    }
    return orElse();
  }
}

abstract class _ByCategoryLoadingState implements SuggestedVideoListState {
  const factory _ByCategoryLoadingState(
      {required final List<Video> oldVideos,
      final VideoCategory? category}) = _$_ByCategoryLoadingState;

  List<Video> get oldVideos;
  VideoCategory? get category;
  @JsonKey(ignore: true)
  _$$_ByCategoryLoadingStateCopyWith<_$_ByCategoryLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ByCategoryLoadedStateCopyWith<$Res> {
  factory _$$_ByCategoryLoadedStateCopyWith(_$_ByCategoryLoadedState value,
          $Res Function(_$_ByCategoryLoadedState) then) =
      __$$_ByCategoryLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video> videos, VideoCategory category, bool hasReachedMax});
}

/// @nodoc
class __$$_ByCategoryLoadedStateCopyWithImpl<$Res>
    extends _$SuggestedVideoListStateCopyWithImpl<$Res,
        _$_ByCategoryLoadedState>
    implements _$$_ByCategoryLoadedStateCopyWith<$Res> {
  __$$_ByCategoryLoadedStateCopyWithImpl(_$_ByCategoryLoadedState _value,
      $Res Function(_$_ByCategoryLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? category = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_ByCategoryLoadedState(
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as VideoCategory,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ByCategoryLoadedState implements _ByCategoryLoadedState {
  const _$_ByCategoryLoadedState(
      {required final List<Video> videos,
      required this.category,
      required this.hasReachedMax})
      : _videos = videos;

  final List<Video> _videos;
  @override
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  final VideoCategory category;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'SuggestedVideoListState.byCategoryLoaded(videos: $videos, category: $category, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ByCategoryLoadedState &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_videos), category, hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ByCategoryLoadedStateCopyWith<_$_ByCategoryLoadedState> get copyWith =>
      __$$_ByCategoryLoadedStateCopyWithImpl<_$_ByCategoryLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> oldVideos) suggestedLoading,
    required TResult Function(List<Video> videos, bool hasReachedMax)
        suggestedLoaded,
    required TResult Function(List<Video> oldVideos, VideoCategory? category)
        categoryLoading,
    required TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)
        byCategoryLoaded,
    required TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)
        error,
  }) {
    return byCategoryLoaded(videos, category, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> oldVideos)? suggestedLoading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult? Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult? Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult? Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
  }) {
    return byCategoryLoaded?.call(videos, category, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> oldVideos)? suggestedLoading,
    TResult Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (byCategoryLoaded != null) {
      return byCategoryLoaded(videos, category, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopularLoadingState value) suggestedLoading,
    required TResult Function(_PopularLoadedState value) suggestedLoaded,
    required TResult Function(_ByCategoryLoadingState value) categoryLoading,
    required TResult Function(_ByCategoryLoadedState value) byCategoryLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return byCategoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PopularLoadingState value)? suggestedLoading,
    TResult? Function(_PopularLoadedState value)? suggestedLoaded,
    TResult? Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult? Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return byCategoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PopularLoadingState value)? suggestedLoading,
    TResult Function(_PopularLoadedState value)? suggestedLoaded,
    TResult Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (byCategoryLoaded != null) {
      return byCategoryLoaded(this);
    }
    return orElse();
  }
}

abstract class _ByCategoryLoadedState implements SuggestedVideoListState {
  const factory _ByCategoryLoadedState(
      {required final List<Video> videos,
      required final VideoCategory category,
      required final bool hasReachedMax}) = _$_ByCategoryLoadedState;

  List<Video> get videos;
  VideoCategory get category;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_ByCategoryLoadedStateCopyWith<_$_ByCategoryLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Video> oldVideos,
      Failure falure,
      SuggestedVideoListEvent lastEvent});

  $SuggestedVideoListEventCopyWith<$Res> get lastEvent;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$SuggestedVideoListStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldVideos = null,
    Object? falure = null,
    Object? lastEvent = null,
  }) {
    return _then(_$_ErrorState(
      oldVideos: null == oldVideos
          ? _value._oldVideos
          : oldVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      falure: null == falure
          ? _value.falure
          : falure // ignore: cast_nullable_to_non_nullable
              as Failure,
      lastEvent: null == lastEvent
          ? _value.lastEvent
          : lastEvent // ignore: cast_nullable_to_non_nullable
              as SuggestedVideoListEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SuggestedVideoListEventCopyWith<$Res> get lastEvent {
    return $SuggestedVideoListEventCopyWith<$Res>(_value.lastEvent, (value) {
      return _then(_value.copyWith(lastEvent: value));
    });
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState(
      {required final List<Video> oldVideos,
      required this.falure,
      required this.lastEvent})
      : _oldVideos = oldVideos;

  final List<Video> _oldVideos;
  @override
  List<Video> get oldVideos {
    if (_oldVideos is EqualUnmodifiableListView) return _oldVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldVideos);
  }

  @override
  final Failure falure;
  @override
  final SuggestedVideoListEvent lastEvent;

  @override
  String toString() {
    return 'SuggestedVideoListState.error(oldVideos: $oldVideos, falure: $falure, lastEvent: $lastEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            const DeepCollectionEquality()
                .equals(other._oldVideos, _oldVideos) &&
            (identical(other.falure, falure) || other.falure == falure) &&
            (identical(other.lastEvent, lastEvent) ||
                other.lastEvent == lastEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_oldVideos), falure, lastEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Video> oldVideos) suggestedLoading,
    required TResult Function(List<Video> videos, bool hasReachedMax)
        suggestedLoaded,
    required TResult Function(List<Video> oldVideos, VideoCategory? category)
        categoryLoading,
    required TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)
        byCategoryLoaded,
    required TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)
        error,
  }) {
    return error(oldVideos, falure, lastEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Video> oldVideos)? suggestedLoading,
    TResult? Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult? Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult? Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult? Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
  }) {
    return error?.call(oldVideos, falure, lastEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Video> oldVideos)? suggestedLoading,
    TResult Function(List<Video> videos, bool hasReachedMax)? suggestedLoaded,
    TResult Function(List<Video> oldVideos, VideoCategory? category)?
        categoryLoading,
    TResult Function(
            List<Video> videos, VideoCategory category, bool hasReachedMax)?
        byCategoryLoaded,
    TResult Function(List<Video> oldVideos, Failure falure,
            SuggestedVideoListEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(oldVideos, falure, lastEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopularLoadingState value) suggestedLoading,
    required TResult Function(_PopularLoadedState value) suggestedLoaded,
    required TResult Function(_ByCategoryLoadingState value) categoryLoading,
    required TResult Function(_ByCategoryLoadedState value) byCategoryLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PopularLoadingState value)? suggestedLoading,
    TResult? Function(_PopularLoadedState value)? suggestedLoaded,
    TResult? Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult? Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PopularLoadingState value)? suggestedLoading,
    TResult Function(_PopularLoadedState value)? suggestedLoaded,
    TResult Function(_ByCategoryLoadingState value)? categoryLoading,
    TResult Function(_ByCategoryLoadedState value)? byCategoryLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements SuggestedVideoListState {
  const factory _ErrorState(
      {required final List<Video> oldVideos,
      required final Failure falure,
      required final SuggestedVideoListEvent lastEvent}) = _$_ErrorState;

  List<Video> get oldVideos;
  Failure get falure;
  SuggestedVideoListEvent get lastEvent;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
