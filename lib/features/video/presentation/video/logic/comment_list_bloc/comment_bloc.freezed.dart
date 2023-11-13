// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentEvent {
  String get videoId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId) loadComments,
    required TResult Function(List<Comment> oldComments, String videoId)
        loadMoreComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? loadComments,
    TResult? Function(List<Comment> oldComments, String videoId)?
        loadMoreComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? loadComments,
    TResult Function(List<Comment> oldComments, String videoId)?
        loadMoreComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadComments value) loadComments,
    required TResult Function(_LoadMoreComments value) loadMoreComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadComments value)? loadComments,
    TResult? Function(_LoadMoreComments value)? loadMoreComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadComments value)? loadComments,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentEventCopyWith<CommentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEventCopyWith<$Res> {
  factory $CommentEventCopyWith(
          CommentEvent value, $Res Function(CommentEvent) then) =
      _$CommentEventCopyWithImpl<$Res, CommentEvent>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class _$CommentEventCopyWithImpl<$Res, $Val extends CommentEvent>
    implements $CommentEventCopyWith<$Res> {
  _$CommentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadCommentsCopyWith<$Res>
    implements $CommentEventCopyWith<$Res> {
  factory _$$_LoadCommentsCopyWith(
          _$_LoadComments value, $Res Function(_$_LoadComments) then) =
      __$$_LoadCommentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$_LoadCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$_LoadComments>
    implements _$$_LoadCommentsCopyWith<$Res> {
  __$$_LoadCommentsCopyWithImpl(
      _$_LoadComments _value, $Res Function(_$_LoadComments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$_LoadComments(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadComments implements _LoadComments {
  const _$_LoadComments({required this.videoId});

  @override
  final String videoId;

  @override
  String toString() {
    return 'CommentEvent.loadComments(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadComments &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCommentsCopyWith<_$_LoadComments> get copyWith =>
      __$$_LoadCommentsCopyWithImpl<_$_LoadComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId) loadComments,
    required TResult Function(List<Comment> oldComments, String videoId)
        loadMoreComments,
  }) {
    return loadComments(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? loadComments,
    TResult? Function(List<Comment> oldComments, String videoId)?
        loadMoreComments,
  }) {
    return loadComments?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? loadComments,
    TResult Function(List<Comment> oldComments, String videoId)?
        loadMoreComments,
    required TResult orElse(),
  }) {
    if (loadComments != null) {
      return loadComments(videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadComments value) loadComments,
    required TResult Function(_LoadMoreComments value) loadMoreComments,
  }) {
    return loadComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadComments value)? loadComments,
    TResult? Function(_LoadMoreComments value)? loadMoreComments,
  }) {
    return loadComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadComments value)? loadComments,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    required TResult orElse(),
  }) {
    if (loadComments != null) {
      return loadComments(this);
    }
    return orElse();
  }
}

abstract class _LoadComments implements CommentEvent {
  const factory _LoadComments({required final String videoId}) =
      _$_LoadComments;

  @override
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$$_LoadCommentsCopyWith<_$_LoadComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreCommentsCopyWith<$Res>
    implements $CommentEventCopyWith<$Res> {
  factory _$$_LoadMoreCommentsCopyWith(
          _$_LoadMoreComments value, $Res Function(_$_LoadMoreComments) then) =
      __$$_LoadMoreCommentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Comment> oldComments, String videoId});
}

/// @nodoc
class __$$_LoadMoreCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$_LoadMoreComments>
    implements _$$_LoadMoreCommentsCopyWith<$Res> {
  __$$_LoadMoreCommentsCopyWithImpl(
      _$_LoadMoreComments _value, $Res Function(_$_LoadMoreComments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldComments = null,
    Object? videoId = null,
  }) {
    return _then(_$_LoadMoreComments(
      oldComments: null == oldComments
          ? _value._oldComments
          : oldComments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadMoreComments implements _LoadMoreComments {
  const _$_LoadMoreComments(
      {required final List<Comment> oldComments, required this.videoId})
      : _oldComments = oldComments;

  final List<Comment> _oldComments;
  @override
  List<Comment> get oldComments {
    if (_oldComments is EqualUnmodifiableListView) return _oldComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldComments);
  }

  @override
  final String videoId;

  @override
  String toString() {
    return 'CommentEvent.loadMoreComments(oldComments: $oldComments, videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMoreComments &&
            const DeepCollectionEquality()
                .equals(other._oldComments, _oldComments) &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_oldComments), videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreCommentsCopyWith<_$_LoadMoreComments> get copyWith =>
      __$$_LoadMoreCommentsCopyWithImpl<_$_LoadMoreComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId) loadComments,
    required TResult Function(List<Comment> oldComments, String videoId)
        loadMoreComments,
  }) {
    return loadMoreComments(oldComments, videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? loadComments,
    TResult? Function(List<Comment> oldComments, String videoId)?
        loadMoreComments,
  }) {
    return loadMoreComments?.call(oldComments, videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? loadComments,
    TResult Function(List<Comment> oldComments, String videoId)?
        loadMoreComments,
    required TResult orElse(),
  }) {
    if (loadMoreComments != null) {
      return loadMoreComments(oldComments, videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadComments value) loadComments,
    required TResult Function(_LoadMoreComments value) loadMoreComments,
  }) {
    return loadMoreComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadComments value)? loadComments,
    TResult? Function(_LoadMoreComments value)? loadMoreComments,
  }) {
    return loadMoreComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadComments value)? loadComments,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    required TResult orElse(),
  }) {
    if (loadMoreComments != null) {
      return loadMoreComments(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreComments implements CommentEvent {
  const factory _LoadMoreComments(
      {required final List<Comment> oldComments,
      required final String videoId}) = _$_LoadMoreComments;

  List<Comment> get oldComments;
  @override
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$$_LoadMoreCommentsCopyWith<_$_LoadMoreComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Comment> oldComments) loading,
    required TResult Function(List<Comment> comments, bool hasReachedMax)
        loaded,
    required TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Comment> oldComments)? loading,
    TResult? Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult? Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Comment> oldComments)? loading,
    TResult Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
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
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res, CommentState>;
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res, $Val extends CommentState>
    implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

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
    extends _$CommentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CommentState.initial()';
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
    required TResult Function(List<Comment> oldComments) loading,
    required TResult Function(List<Comment> comments, bool hasReachedMax)
        loaded,
    required TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Comment> oldComments)? loading,
    TResult? Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult? Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Comment> oldComments)? loading,
    TResult Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
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

abstract class _Initial implements CommentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Comment> oldComments});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldComments = null,
  }) {
    return _then(_$_Loading(
      oldComments: null == oldComments
          ? _value._oldComments
          : oldComments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required final List<Comment> oldComments})
      : _oldComments = oldComments;

  final List<Comment> _oldComments;
  @override
  List<Comment> get oldComments {
    if (_oldComments is EqualUnmodifiableListView) return _oldComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldComments);
  }

  @override
  String toString() {
    return 'CommentState.loading(oldComments: $oldComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality()
                .equals(other._oldComments, _oldComments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_oldComments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Comment> oldComments) loading,
    required TResult Function(List<Comment> comments, bool hasReachedMax)
        loaded,
    required TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)
        error,
  }) {
    return loading(oldComments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Comment> oldComments)? loading,
    TResult? Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult? Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
        error,
  }) {
    return loading?.call(oldComments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Comment> oldComments)? loading,
    TResult Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(oldComments);
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

abstract class _Loading implements CommentState {
  const factory _Loading({required final List<Comment> oldComments}) =
      _$_Loading;

  List<Comment> get oldComments;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Comment> comments, bool hasReachedMax});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_Loaded(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
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
      {required final List<Comment> comments, required this.hasReachedMax})
      : _comments = comments;

  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'CommentState.loaded(comments: $comments, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_comments), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Comment> oldComments) loading,
    required TResult Function(List<Comment> comments, bool hasReachedMax)
        loaded,
    required TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)
        error,
  }) {
    return loaded(comments, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Comment> oldComments)? loading,
    TResult? Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult? Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
        error,
  }) {
    return loaded?.call(comments, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Comment> oldComments)? loading,
    TResult Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(comments, hasReachedMax);
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

abstract class _Loaded implements CommentState {
  const factory _Loaded(
      {required final List<Comment> comments,
      required final bool hasReachedMax}) = _$_Loaded;

  List<Comment> get comments;
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
      {CommentEvent lastEvent, Failure falure, List<Comment> oldComments});

  $CommentEventCopyWith<$Res> get lastEvent;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastEvent = null,
    Object? falure = null,
    Object? oldComments = null,
  }) {
    return _then(_$_Error(
      lastEvent: null == lastEvent
          ? _value.lastEvent
          : lastEvent // ignore: cast_nullable_to_non_nullable
              as CommentEvent,
      falure: null == falure
          ? _value.falure
          : falure // ignore: cast_nullable_to_non_nullable
              as Failure,
      oldComments: null == oldComments
          ? _value._oldComments
          : oldComments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentEventCopyWith<$Res> get lastEvent {
    return $CommentEventCopyWith<$Res>(_value.lastEvent, (value) {
      return _then(_value.copyWith(lastEvent: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {required this.lastEvent,
      required this.falure,
      required final List<Comment> oldComments})
      : _oldComments = oldComments;

  @override
  final CommentEvent lastEvent;
  @override
  final Failure falure;
  final List<Comment> _oldComments;
  @override
  List<Comment> get oldComments {
    if (_oldComments is EqualUnmodifiableListView) return _oldComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldComments);
  }

  @override
  String toString() {
    return 'CommentState.error(lastEvent: $lastEvent, falure: $falure, oldComments: $oldComments)';
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
                .equals(other._oldComments, _oldComments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastEvent, falure,
      const DeepCollectionEquality().hash(_oldComments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Comment> oldComments) loading,
    required TResult Function(List<Comment> comments, bool hasReachedMax)
        loaded,
    required TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)
        error,
  }) {
    return error(lastEvent, falure, oldComments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Comment> oldComments)? loading,
    TResult? Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult? Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
        error,
  }) {
    return error?.call(lastEvent, falure, oldComments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Comment> oldComments)? loading,
    TResult Function(List<Comment> comments, bool hasReachedMax)? loaded,
    TResult Function(
            CommentEvent lastEvent, Failure falure, List<Comment> oldComments)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(lastEvent, falure, oldComments);
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

abstract class _Error implements CommentState {
  const factory _Error(
      {required final CommentEvent lastEvent,
      required final Failure falure,
      required final List<Comment> oldComments}) = _$_Error;

  CommentEvent get lastEvent;
  Failure get falure;
  List<Comment> get oldComments;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
