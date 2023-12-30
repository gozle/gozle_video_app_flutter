// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_like_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoLikeState {
  int get likesCount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int likesCount) liked,
    required TResult Function(int likesCount) notLiked,
    required TResult Function(int likesCount) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int likesCount)? liked,
    TResult? Function(int likesCount)? notLiked,
    TResult? Function(int likesCount)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int likesCount)? liked,
    TResult Function(int likesCount)? notLiked,
    TResult Function(int likesCount)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_NotLiked value) notLiked,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Liked value)? liked,
    TResult? Function(_NotLiked value)? notLiked,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_NotLiked value)? notLiked,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoLikeStateCopyWith<VideoLikeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoLikeStateCopyWith<$Res> {
  factory $VideoLikeStateCopyWith(
          VideoLikeState value, $Res Function(VideoLikeState) then) =
      _$VideoLikeStateCopyWithImpl<$Res, VideoLikeState>;
  @useResult
  $Res call({int likesCount});
}

/// @nodoc
class _$VideoLikeStateCopyWithImpl<$Res, $Val extends VideoLikeState>
    implements $VideoLikeStateCopyWith<$Res> {
  _$VideoLikeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likesCount = null,
  }) {
    return _then(_value.copyWith(
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LikedCopyWith<$Res>
    implements $VideoLikeStateCopyWith<$Res> {
  factory _$$_LikedCopyWith(_$_Liked value, $Res Function(_$_Liked) then) =
      __$$_LikedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int likesCount});
}

/// @nodoc
class __$$_LikedCopyWithImpl<$Res>
    extends _$VideoLikeStateCopyWithImpl<$Res, _$_Liked>
    implements _$$_LikedCopyWith<$Res> {
  __$$_LikedCopyWithImpl(_$_Liked _value, $Res Function(_$_Liked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likesCount = null,
  }) {
    return _then(_$_Liked(
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Liked implements _Liked {
  const _$_Liked({required this.likesCount});

  @override
  final int likesCount;

  @override
  String toString() {
    return 'VideoLikeState.liked(likesCount: $likesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Liked &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, likesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikedCopyWith<_$_Liked> get copyWith =>
      __$$_LikedCopyWithImpl<_$_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int likesCount) liked,
    required TResult Function(int likesCount) notLiked,
    required TResult Function(int likesCount) unauthenticated,
  }) {
    return liked(likesCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int likesCount)? liked,
    TResult? Function(int likesCount)? notLiked,
    TResult? Function(int likesCount)? unauthenticated,
  }) {
    return liked?.call(likesCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int likesCount)? liked,
    TResult Function(int likesCount)? notLiked,
    TResult Function(int likesCount)? unauthenticated,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(likesCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_NotLiked value) notLiked,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Liked value)? liked,
    TResult? Function(_NotLiked value)? notLiked,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
  }) {
    return liked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_NotLiked value)? notLiked,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements VideoLikeState {
  const factory _Liked({required final int likesCount}) = _$_Liked;

  @override
  int get likesCount;
  @override
  @JsonKey(ignore: true)
  _$$_LikedCopyWith<_$_Liked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotLikedCopyWith<$Res>
    implements $VideoLikeStateCopyWith<$Res> {
  factory _$$_NotLikedCopyWith(
          _$_NotLiked value, $Res Function(_$_NotLiked) then) =
      __$$_NotLikedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int likesCount});
}

/// @nodoc
class __$$_NotLikedCopyWithImpl<$Res>
    extends _$VideoLikeStateCopyWithImpl<$Res, _$_NotLiked>
    implements _$$_NotLikedCopyWith<$Res> {
  __$$_NotLikedCopyWithImpl(
      _$_NotLiked _value, $Res Function(_$_NotLiked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likesCount = null,
  }) {
    return _then(_$_NotLiked(
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NotLiked implements _NotLiked {
  const _$_NotLiked({required this.likesCount});

  @override
  final int likesCount;

  @override
  String toString() {
    return 'VideoLikeState.notLiked(likesCount: $likesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotLiked &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, likesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotLikedCopyWith<_$_NotLiked> get copyWith =>
      __$$_NotLikedCopyWithImpl<_$_NotLiked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int likesCount) liked,
    required TResult Function(int likesCount) notLiked,
    required TResult Function(int likesCount) unauthenticated,
  }) {
    return notLiked(likesCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int likesCount)? liked,
    TResult? Function(int likesCount)? notLiked,
    TResult? Function(int likesCount)? unauthenticated,
  }) {
    return notLiked?.call(likesCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int likesCount)? liked,
    TResult Function(int likesCount)? notLiked,
    TResult Function(int likesCount)? unauthenticated,
    required TResult orElse(),
  }) {
    if (notLiked != null) {
      return notLiked(likesCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_NotLiked value) notLiked,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) {
    return notLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Liked value)? liked,
    TResult? Function(_NotLiked value)? notLiked,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
  }) {
    return notLiked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_NotLiked value)? notLiked,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (notLiked != null) {
      return notLiked(this);
    }
    return orElse();
  }
}

abstract class _NotLiked implements VideoLikeState {
  const factory _NotLiked({required final int likesCount}) = _$_NotLiked;

  @override
  int get likesCount;
  @override
  @JsonKey(ignore: true)
  _$$_NotLikedCopyWith<_$_NotLiked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res>
    implements $VideoLikeStateCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int likesCount});
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$VideoLikeStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likesCount = null,
  }) {
    return _then(_$_UnAuthenticated(
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated({required this.likesCount});

  @override
  final int likesCount;

  @override
  String toString() {
    return 'VideoLikeState.unauthenticated(likesCount: $likesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthenticated &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, likesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      __$$_UnAuthenticatedCopyWithImpl<_$_UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int likesCount) liked,
    required TResult Function(int likesCount) notLiked,
    required TResult Function(int likesCount) unauthenticated,
  }) {
    return unauthenticated(likesCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int likesCount)? liked,
    TResult? Function(int likesCount)? notLiked,
    TResult? Function(int likesCount)? unauthenticated,
  }) {
    return unauthenticated?.call(likesCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int likesCount)? liked,
    TResult Function(int likesCount)? notLiked,
    TResult Function(int likesCount)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(likesCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_NotLiked value) notLiked,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Liked value)? liked,
    TResult? Function(_NotLiked value)? notLiked,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_NotLiked value)? notLiked,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements VideoLikeState {
  const factory _UnAuthenticated({required final int likesCount}) =
      _$_UnAuthenticated;

  @override
  int get likesCount;
  @override
  @JsonKey(ignore: true)
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
