// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String videoId, String? title, String? thumbnail, String? url)
        playNetworkVideo,
    required TResult Function() closeAdd,
    required TResult Function(Video video) playCashedVideo,
    required TResult Function() remove,
    required TResult Function() expand,
    required TResult Function() minimize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult? Function()? closeAdd,
    TResult? Function(Video video)? playCashedVideo,
    TResult? Function()? remove,
    TResult? Function()? expand,
    TResult? Function()? minimize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult Function()? closeAdd,
    TResult Function(Video video)? playCashedVideo,
    TResult Function()? remove,
    TResult Function()? expand,
    TResult Function()? minimize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayNetwork value) playNetworkVideo,
    required TResult Function(_CloseAdd value) closeAdd,
    required TResult Function(_PlayCashed value) playCashedVideo,
    required TResult Function(_Remove value) remove,
    required TResult Function(_ExpandMiniplayer value) expand,
    required TResult Function(_MinimizeMiniplayer value) minimize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayNetwork value)? playNetworkVideo,
    TResult? Function(_CloseAdd value)? closeAdd,
    TResult? Function(_PlayCashed value)? playCashedVideo,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_ExpandMiniplayer value)? expand,
    TResult? Function(_MinimizeMiniplayer value)? minimize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayNetwork value)? playNetworkVideo,
    TResult Function(_CloseAdd value)? closeAdd,
    TResult Function(_PlayCashed value)? playCashedVideo,
    TResult Function(_Remove value)? remove,
    TResult Function(_ExpandMiniplayer value)? expand,
    TResult Function(_MinimizeMiniplayer value)? minimize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEventCopyWith<$Res> {
  factory $VideoEventCopyWith(
          VideoEvent value, $Res Function(VideoEvent) then) =
      _$VideoEventCopyWithImpl<$Res, VideoEvent>;
}

/// @nodoc
class _$VideoEventCopyWithImpl<$Res, $Val extends VideoEvent>
    implements $VideoEventCopyWith<$Res> {
  _$VideoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PlayNetworkCopyWith<$Res> {
  factory _$$_PlayNetworkCopyWith(
          _$_PlayNetwork value, $Res Function(_$_PlayNetwork) then) =
      __$$_PlayNetworkCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId, String? title, String? thumbnail, String? url});
}

/// @nodoc
class __$$_PlayNetworkCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$_PlayNetwork>
    implements _$$_PlayNetworkCopyWith<$Res> {
  __$$_PlayNetworkCopyWithImpl(
      _$_PlayNetwork _value, $Res Function(_$_PlayNetwork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PlayNetwork(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PlayNetwork implements _PlayNetwork {
  const _$_PlayNetwork(
      {required this.videoId, this.title, this.thumbnail, this.url});

  @override
  final String videoId;
  @override
  final String? title;
  @override
  final String? thumbnail;
  @override
  final String? url;

  @override
  String toString() {
    return 'VideoEvent.playNetworkVideo(videoId: $videoId, title: $title, thumbnail: $thumbnail, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayNetwork &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, title, thumbnail, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayNetworkCopyWith<_$_PlayNetwork> get copyWith =>
      __$$_PlayNetworkCopyWithImpl<_$_PlayNetwork>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String videoId, String? title, String? thumbnail, String? url)
        playNetworkVideo,
    required TResult Function() closeAdd,
    required TResult Function(Video video) playCashedVideo,
    required TResult Function() remove,
    required TResult Function() expand,
    required TResult Function() minimize,
  }) {
    return playNetworkVideo(videoId, title, thumbnail, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult? Function()? closeAdd,
    TResult? Function(Video video)? playCashedVideo,
    TResult? Function()? remove,
    TResult? Function()? expand,
    TResult? Function()? minimize,
  }) {
    return playNetworkVideo?.call(videoId, title, thumbnail, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult Function()? closeAdd,
    TResult Function(Video video)? playCashedVideo,
    TResult Function()? remove,
    TResult Function()? expand,
    TResult Function()? minimize,
    required TResult orElse(),
  }) {
    if (playNetworkVideo != null) {
      return playNetworkVideo(videoId, title, thumbnail, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayNetwork value) playNetworkVideo,
    required TResult Function(_CloseAdd value) closeAdd,
    required TResult Function(_PlayCashed value) playCashedVideo,
    required TResult Function(_Remove value) remove,
    required TResult Function(_ExpandMiniplayer value) expand,
    required TResult Function(_MinimizeMiniplayer value) minimize,
  }) {
    return playNetworkVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayNetwork value)? playNetworkVideo,
    TResult? Function(_CloseAdd value)? closeAdd,
    TResult? Function(_PlayCashed value)? playCashedVideo,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_ExpandMiniplayer value)? expand,
    TResult? Function(_MinimizeMiniplayer value)? minimize,
  }) {
    return playNetworkVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayNetwork value)? playNetworkVideo,
    TResult Function(_CloseAdd value)? closeAdd,
    TResult Function(_PlayCashed value)? playCashedVideo,
    TResult Function(_Remove value)? remove,
    TResult Function(_ExpandMiniplayer value)? expand,
    TResult Function(_MinimizeMiniplayer value)? minimize,
    required TResult orElse(),
  }) {
    if (playNetworkVideo != null) {
      return playNetworkVideo(this);
    }
    return orElse();
  }
}

abstract class _PlayNetwork implements VideoEvent {
  const factory _PlayNetwork(
      {required final String videoId,
      final String? title,
      final String? thumbnail,
      final String? url}) = _$_PlayNetwork;

  String get videoId;
  String? get title;
  String? get thumbnail;
  String? get url;
  @JsonKey(ignore: true)
  _$$_PlayNetworkCopyWith<_$_PlayNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CloseAddCopyWith<$Res> {
  factory _$$_CloseAddCopyWith(
          _$_CloseAdd value, $Res Function(_$_CloseAdd) then) =
      __$$_CloseAddCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseAddCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$_CloseAdd>
    implements _$$_CloseAddCopyWith<$Res> {
  __$$_CloseAddCopyWithImpl(
      _$_CloseAdd _value, $Res Function(_$_CloseAdd) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CloseAdd implements _CloseAdd {
  const _$_CloseAdd();

  @override
  String toString() {
    return 'VideoEvent.closeAdd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CloseAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String videoId, String? title, String? thumbnail, String? url)
        playNetworkVideo,
    required TResult Function() closeAdd,
    required TResult Function(Video video) playCashedVideo,
    required TResult Function() remove,
    required TResult Function() expand,
    required TResult Function() minimize,
  }) {
    return closeAdd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult? Function()? closeAdd,
    TResult? Function(Video video)? playCashedVideo,
    TResult? Function()? remove,
    TResult? Function()? expand,
    TResult? Function()? minimize,
  }) {
    return closeAdd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult Function()? closeAdd,
    TResult Function(Video video)? playCashedVideo,
    TResult Function()? remove,
    TResult Function()? expand,
    TResult Function()? minimize,
    required TResult orElse(),
  }) {
    if (closeAdd != null) {
      return closeAdd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayNetwork value) playNetworkVideo,
    required TResult Function(_CloseAdd value) closeAdd,
    required TResult Function(_PlayCashed value) playCashedVideo,
    required TResult Function(_Remove value) remove,
    required TResult Function(_ExpandMiniplayer value) expand,
    required TResult Function(_MinimizeMiniplayer value) minimize,
  }) {
    return closeAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayNetwork value)? playNetworkVideo,
    TResult? Function(_CloseAdd value)? closeAdd,
    TResult? Function(_PlayCashed value)? playCashedVideo,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_ExpandMiniplayer value)? expand,
    TResult? Function(_MinimizeMiniplayer value)? minimize,
  }) {
    return closeAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayNetwork value)? playNetworkVideo,
    TResult Function(_CloseAdd value)? closeAdd,
    TResult Function(_PlayCashed value)? playCashedVideo,
    TResult Function(_Remove value)? remove,
    TResult Function(_ExpandMiniplayer value)? expand,
    TResult Function(_MinimizeMiniplayer value)? minimize,
    required TResult orElse(),
  }) {
    if (closeAdd != null) {
      return closeAdd(this);
    }
    return orElse();
  }
}

abstract class _CloseAdd implements VideoEvent {
  const factory _CloseAdd() = _$_CloseAdd;
}

/// @nodoc
abstract class _$$_PlayCashedCopyWith<$Res> {
  factory _$$_PlayCashedCopyWith(
          _$_PlayCashed value, $Res Function(_$_PlayCashed) then) =
      __$$_PlayCashedCopyWithImpl<$Res>;
  @useResult
  $Res call({Video video});
}

/// @nodoc
class __$$_PlayCashedCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$_PlayCashed>
    implements _$$_PlayCashedCopyWith<$Res> {
  __$$_PlayCashedCopyWithImpl(
      _$_PlayCashed _value, $Res Function(_$_PlayCashed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_$_PlayCashed(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Video,
    ));
  }
}

/// @nodoc

class _$_PlayCashed implements _PlayCashed {
  const _$_PlayCashed({required this.video});

  @override
  final Video video;

  @override
  String toString() {
    return 'VideoEvent.playCashedVideo(video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayCashed &&
            (identical(other.video, video) || other.video == video));
  }

  @override
  int get hashCode => Object.hash(runtimeType, video);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayCashedCopyWith<_$_PlayCashed> get copyWith =>
      __$$_PlayCashedCopyWithImpl<_$_PlayCashed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String videoId, String? title, String? thumbnail, String? url)
        playNetworkVideo,
    required TResult Function() closeAdd,
    required TResult Function(Video video) playCashedVideo,
    required TResult Function() remove,
    required TResult Function() expand,
    required TResult Function() minimize,
  }) {
    return playCashedVideo(video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult? Function()? closeAdd,
    TResult? Function(Video video)? playCashedVideo,
    TResult? Function()? remove,
    TResult? Function()? expand,
    TResult? Function()? minimize,
  }) {
    return playCashedVideo?.call(video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult Function()? closeAdd,
    TResult Function(Video video)? playCashedVideo,
    TResult Function()? remove,
    TResult Function()? expand,
    TResult Function()? minimize,
    required TResult orElse(),
  }) {
    if (playCashedVideo != null) {
      return playCashedVideo(video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayNetwork value) playNetworkVideo,
    required TResult Function(_CloseAdd value) closeAdd,
    required TResult Function(_PlayCashed value) playCashedVideo,
    required TResult Function(_Remove value) remove,
    required TResult Function(_ExpandMiniplayer value) expand,
    required TResult Function(_MinimizeMiniplayer value) minimize,
  }) {
    return playCashedVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayNetwork value)? playNetworkVideo,
    TResult? Function(_CloseAdd value)? closeAdd,
    TResult? Function(_PlayCashed value)? playCashedVideo,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_ExpandMiniplayer value)? expand,
    TResult? Function(_MinimizeMiniplayer value)? minimize,
  }) {
    return playCashedVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayNetwork value)? playNetworkVideo,
    TResult Function(_CloseAdd value)? closeAdd,
    TResult Function(_PlayCashed value)? playCashedVideo,
    TResult Function(_Remove value)? remove,
    TResult Function(_ExpandMiniplayer value)? expand,
    TResult Function(_MinimizeMiniplayer value)? minimize,
    required TResult orElse(),
  }) {
    if (playCashedVideo != null) {
      return playCashedVideo(this);
    }
    return orElse();
  }
}

abstract class _PlayCashed implements VideoEvent {
  const factory _PlayCashed({required final Video video}) = _$_PlayCashed;

  Video get video;
  @JsonKey(ignore: true)
  _$$_PlayCashedCopyWith<_$_PlayCashed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveCopyWith<$Res> {
  factory _$$_RemoveCopyWith(_$_Remove value, $Res Function(_$_Remove) then) =
      __$$_RemoveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoveCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$_Remove>
    implements _$$_RemoveCopyWith<$Res> {
  __$$_RemoveCopyWithImpl(_$_Remove _value, $Res Function(_$_Remove) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Remove implements _Remove {
  const _$_Remove();

  @override
  String toString() {
    return 'VideoEvent.remove()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Remove);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String videoId, String? title, String? thumbnail, String? url)
        playNetworkVideo,
    required TResult Function() closeAdd,
    required TResult Function(Video video) playCashedVideo,
    required TResult Function() remove,
    required TResult Function() expand,
    required TResult Function() minimize,
  }) {
    return remove();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult? Function()? closeAdd,
    TResult? Function(Video video)? playCashedVideo,
    TResult? Function()? remove,
    TResult? Function()? expand,
    TResult? Function()? minimize,
  }) {
    return remove?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult Function()? closeAdd,
    TResult Function(Video video)? playCashedVideo,
    TResult Function()? remove,
    TResult Function()? expand,
    TResult Function()? minimize,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayNetwork value) playNetworkVideo,
    required TResult Function(_CloseAdd value) closeAdd,
    required TResult Function(_PlayCashed value) playCashedVideo,
    required TResult Function(_Remove value) remove,
    required TResult Function(_ExpandMiniplayer value) expand,
    required TResult Function(_MinimizeMiniplayer value) minimize,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayNetwork value)? playNetworkVideo,
    TResult? Function(_CloseAdd value)? closeAdd,
    TResult? Function(_PlayCashed value)? playCashedVideo,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_ExpandMiniplayer value)? expand,
    TResult? Function(_MinimizeMiniplayer value)? minimize,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayNetwork value)? playNetworkVideo,
    TResult Function(_CloseAdd value)? closeAdd,
    TResult Function(_PlayCashed value)? playCashedVideo,
    TResult Function(_Remove value)? remove,
    TResult Function(_ExpandMiniplayer value)? expand,
    TResult Function(_MinimizeMiniplayer value)? minimize,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements VideoEvent {
  const factory _Remove() = _$_Remove;
}

/// @nodoc
abstract class _$$_ExpandMiniplayerCopyWith<$Res> {
  factory _$$_ExpandMiniplayerCopyWith(
          _$_ExpandMiniplayer value, $Res Function(_$_ExpandMiniplayer) then) =
      __$$_ExpandMiniplayerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExpandMiniplayerCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$_ExpandMiniplayer>
    implements _$$_ExpandMiniplayerCopyWith<$Res> {
  __$$_ExpandMiniplayerCopyWithImpl(
      _$_ExpandMiniplayer _value, $Res Function(_$_ExpandMiniplayer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExpandMiniplayer implements _ExpandMiniplayer {
  const _$_ExpandMiniplayer();

  @override
  String toString() {
    return 'VideoEvent.expand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ExpandMiniplayer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String videoId, String? title, String? thumbnail, String? url)
        playNetworkVideo,
    required TResult Function() closeAdd,
    required TResult Function(Video video) playCashedVideo,
    required TResult Function() remove,
    required TResult Function() expand,
    required TResult Function() minimize,
  }) {
    return expand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult? Function()? closeAdd,
    TResult? Function(Video video)? playCashedVideo,
    TResult? Function()? remove,
    TResult? Function()? expand,
    TResult? Function()? minimize,
  }) {
    return expand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult Function()? closeAdd,
    TResult Function(Video video)? playCashedVideo,
    TResult Function()? remove,
    TResult Function()? expand,
    TResult Function()? minimize,
    required TResult orElse(),
  }) {
    if (expand != null) {
      return expand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayNetwork value) playNetworkVideo,
    required TResult Function(_CloseAdd value) closeAdd,
    required TResult Function(_PlayCashed value) playCashedVideo,
    required TResult Function(_Remove value) remove,
    required TResult Function(_ExpandMiniplayer value) expand,
    required TResult Function(_MinimizeMiniplayer value) minimize,
  }) {
    return expand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayNetwork value)? playNetworkVideo,
    TResult? Function(_CloseAdd value)? closeAdd,
    TResult? Function(_PlayCashed value)? playCashedVideo,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_ExpandMiniplayer value)? expand,
    TResult? Function(_MinimizeMiniplayer value)? minimize,
  }) {
    return expand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayNetwork value)? playNetworkVideo,
    TResult Function(_CloseAdd value)? closeAdd,
    TResult Function(_PlayCashed value)? playCashedVideo,
    TResult Function(_Remove value)? remove,
    TResult Function(_ExpandMiniplayer value)? expand,
    TResult Function(_MinimizeMiniplayer value)? minimize,
    required TResult orElse(),
  }) {
    if (expand != null) {
      return expand(this);
    }
    return orElse();
  }
}

abstract class _ExpandMiniplayer implements VideoEvent {
  const factory _ExpandMiniplayer() = _$_ExpandMiniplayer;
}

/// @nodoc
abstract class _$$_MinimizeMiniplayerCopyWith<$Res> {
  factory _$$_MinimizeMiniplayerCopyWith(_$_MinimizeMiniplayer value,
          $Res Function(_$_MinimizeMiniplayer) then) =
      __$$_MinimizeMiniplayerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MinimizeMiniplayerCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$_MinimizeMiniplayer>
    implements _$$_MinimizeMiniplayerCopyWith<$Res> {
  __$$_MinimizeMiniplayerCopyWithImpl(
      _$_MinimizeMiniplayer _value, $Res Function(_$_MinimizeMiniplayer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MinimizeMiniplayer implements _MinimizeMiniplayer {
  const _$_MinimizeMiniplayer();

  @override
  String toString() {
    return 'VideoEvent.minimize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MinimizeMiniplayer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String videoId, String? title, String? thumbnail, String? url)
        playNetworkVideo,
    required TResult Function() closeAdd,
    required TResult Function(Video video) playCashedVideo,
    required TResult Function() remove,
    required TResult Function() expand,
    required TResult Function() minimize,
  }) {
    return minimize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult? Function()? closeAdd,
    TResult? Function(Video video)? playCashedVideo,
    TResult? Function()? remove,
    TResult? Function()? expand,
    TResult? Function()? minimize,
  }) {
    return minimize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String videoId, String? title, String? thumbnail, String? url)?
        playNetworkVideo,
    TResult Function()? closeAdd,
    TResult Function(Video video)? playCashedVideo,
    TResult Function()? remove,
    TResult Function()? expand,
    TResult Function()? minimize,
    required TResult orElse(),
  }) {
    if (minimize != null) {
      return minimize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayNetwork value) playNetworkVideo,
    required TResult Function(_CloseAdd value) closeAdd,
    required TResult Function(_PlayCashed value) playCashedVideo,
    required TResult Function(_Remove value) remove,
    required TResult Function(_ExpandMiniplayer value) expand,
    required TResult Function(_MinimizeMiniplayer value) minimize,
  }) {
    return minimize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayNetwork value)? playNetworkVideo,
    TResult? Function(_CloseAdd value)? closeAdd,
    TResult? Function(_PlayCashed value)? playCashedVideo,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_ExpandMiniplayer value)? expand,
    TResult? Function(_MinimizeMiniplayer value)? minimize,
  }) {
    return minimize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayNetwork value)? playNetworkVideo,
    TResult Function(_CloseAdd value)? closeAdd,
    TResult Function(_PlayCashed value)? playCashedVideo,
    TResult Function(_Remove value)? remove,
    TResult Function(_ExpandMiniplayer value)? expand,
    TResult Function(_MinimizeMiniplayer value)? minimize,
    required TResult orElse(),
  }) {
    if (minimize != null) {
      return minimize(this);
    }
    return orElse();
  }
}

abstract class _MinimizeMiniplayer implements VideoEvent {
  const factory _MinimizeMiniplayer() = _$_MinimizeMiniplayer;
}

/// @nodoc
mixin _$VideoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String videoId, String? title) loading,
    required TResult Function(Video video) loaded,
    required TResult Function(Failure failure, String videoId) error,
    required TResult Function(VideoAdsModel videoAd) advertisementLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String videoId, String? title)? loading,
    TResult? Function(Video video)? loaded,
    TResult? Function(Failure failure, String videoId)? error,
    TResult? Function(VideoAdsModel videoAd)? advertisementLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String videoId, String? title)? loading,
    TResult Function(Video video)? loaded,
    TResult Function(Failure failure, String videoId)? error,
    TResult Function(VideoAdsModel videoAd)? advertisementLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AdvertisementLoaded value) advertisementLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AdvertisementLoaded value)? advertisementLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AdvertisementLoaded value)? advertisementLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

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
    extends _$VideoStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'VideoState.initial()';
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
    required TResult Function(String videoId, String? title) loading,
    required TResult Function(Video video) loaded,
    required TResult Function(Failure failure, String videoId) error,
    required TResult Function(VideoAdsModel videoAd) advertisementLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String videoId, String? title)? loading,
    TResult? Function(Video video)? loaded,
    TResult? Function(Failure failure, String videoId)? error,
    TResult? Function(VideoAdsModel videoAd)? advertisementLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String videoId, String? title)? loading,
    TResult Function(Video video)? loaded,
    TResult Function(Failure failure, String videoId)? error,
    TResult Function(VideoAdsModel videoAd)? advertisementLoaded,
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
    required TResult Function(_AdvertisementLoaded value) advertisementLoaded,
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
    TResult? Function(_AdvertisementLoaded value)? advertisementLoaded,
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
    TResult Function(_AdvertisementLoaded value)? advertisementLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId, String? title});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? title = freezed,
  }) {
    return _then(_$_Loading(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.videoId, this.title});

  @override
  final String videoId;
  @override
  final String? title;

  @override
  String toString() {
    return 'VideoState.loading(videoId: $videoId, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String videoId, String? title) loading,
    required TResult Function(Video video) loaded,
    required TResult Function(Failure failure, String videoId) error,
    required TResult Function(VideoAdsModel videoAd) advertisementLoaded,
  }) {
    return loading(videoId, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String videoId, String? title)? loading,
    TResult? Function(Video video)? loaded,
    TResult? Function(Failure failure, String videoId)? error,
    TResult? Function(VideoAdsModel videoAd)? advertisementLoaded,
  }) {
    return loading?.call(videoId, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String videoId, String? title)? loading,
    TResult Function(Video video)? loaded,
    TResult Function(Failure failure, String videoId)? error,
    TResult Function(VideoAdsModel videoAd)? advertisementLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(videoId, title);
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
    required TResult Function(_AdvertisementLoaded value) advertisementLoaded,
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
    TResult? Function(_AdvertisementLoaded value)? advertisementLoaded,
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
    TResult Function(_AdvertisementLoaded value)? advertisementLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements VideoState {
  const factory _Loading({required final String videoId, final String? title}) =
      _$_Loading;

  String get videoId;
  String? get title;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Video video});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_$_Loaded(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Video,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.video});

  @override
  final Video video;

  @override
  String toString() {
    return 'VideoState.loaded(video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.video, video) || other.video == video));
  }

  @override
  int get hashCode => Object.hash(runtimeType, video);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String videoId, String? title) loading,
    required TResult Function(Video video) loaded,
    required TResult Function(Failure failure, String videoId) error,
    required TResult Function(VideoAdsModel videoAd) advertisementLoaded,
  }) {
    return loaded(video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String videoId, String? title)? loading,
    TResult? Function(Video video)? loaded,
    TResult? Function(Failure failure, String videoId)? error,
    TResult? Function(VideoAdsModel videoAd)? advertisementLoaded,
  }) {
    return loaded?.call(video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String videoId, String? title)? loading,
    TResult Function(Video video)? loaded,
    TResult Function(Failure failure, String videoId)? error,
    TResult Function(VideoAdsModel videoAd)? advertisementLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(video);
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
    required TResult Function(_AdvertisementLoaded value) advertisementLoaded,
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
    TResult? Function(_AdvertisementLoaded value)? advertisementLoaded,
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
    TResult Function(_AdvertisementLoaded value)? advertisementLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements VideoState {
  const factory _Loaded({required final Video video}) = _$_Loaded;

  Video get video;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure, String videoId});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? videoId = null,
  }) {
    return _then(_$_Error(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.failure, required this.videoId});

  @override
  final Failure failure;
  @override
  final String videoId;

  @override
  String toString() {
    return 'VideoState.error(failure: $failure, videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String videoId, String? title) loading,
    required TResult Function(Video video) loaded,
    required TResult Function(Failure failure, String videoId) error,
    required TResult Function(VideoAdsModel videoAd) advertisementLoaded,
  }) {
    return error(failure, videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String videoId, String? title)? loading,
    TResult? Function(Video video)? loaded,
    TResult? Function(Failure failure, String videoId)? error,
    TResult? Function(VideoAdsModel videoAd)? advertisementLoaded,
  }) {
    return error?.call(failure, videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String videoId, String? title)? loading,
    TResult Function(Video video)? loaded,
    TResult Function(Failure failure, String videoId)? error,
    TResult Function(VideoAdsModel videoAd)? advertisementLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure, videoId);
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
    required TResult Function(_AdvertisementLoaded value) advertisementLoaded,
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
    TResult? Function(_AdvertisementLoaded value)? advertisementLoaded,
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
    TResult Function(_AdvertisementLoaded value)? advertisementLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements VideoState {
  const factory _Error(
      {required final Failure failure,
      required final String videoId}) = _$_Error;

  Failure get failure;
  String get videoId;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdvertisementLoadedCopyWith<$Res> {
  factory _$$_AdvertisementLoadedCopyWith(_$_AdvertisementLoaded value,
          $Res Function(_$_AdvertisementLoaded) then) =
      __$$_AdvertisementLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoAdsModel videoAd});
}

/// @nodoc
class __$$_AdvertisementLoadedCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$_AdvertisementLoaded>
    implements _$$_AdvertisementLoadedCopyWith<$Res> {
  __$$_AdvertisementLoadedCopyWithImpl(_$_AdvertisementLoaded _value,
      $Res Function(_$_AdvertisementLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoAd = null,
  }) {
    return _then(_$_AdvertisementLoaded(
      videoAd: null == videoAd
          ? _value.videoAd
          : videoAd // ignore: cast_nullable_to_non_nullable
              as VideoAdsModel,
    ));
  }
}

/// @nodoc

class _$_AdvertisementLoaded implements _AdvertisementLoaded {
  const _$_AdvertisementLoaded({required this.videoAd});

  @override
  final VideoAdsModel videoAd;

  @override
  String toString() {
    return 'VideoState.advertisementLoaded(videoAd: $videoAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdvertisementLoaded &&
            (identical(other.videoAd, videoAd) || other.videoAd == videoAd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoAd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvertisementLoadedCopyWith<_$_AdvertisementLoaded> get copyWith =>
      __$$_AdvertisementLoadedCopyWithImpl<_$_AdvertisementLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String videoId, String? title) loading,
    required TResult Function(Video video) loaded,
    required TResult Function(Failure failure, String videoId) error,
    required TResult Function(VideoAdsModel videoAd) advertisementLoaded,
  }) {
    return advertisementLoaded(videoAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String videoId, String? title)? loading,
    TResult? Function(Video video)? loaded,
    TResult? Function(Failure failure, String videoId)? error,
    TResult? Function(VideoAdsModel videoAd)? advertisementLoaded,
  }) {
    return advertisementLoaded?.call(videoAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String videoId, String? title)? loading,
    TResult Function(Video video)? loaded,
    TResult Function(Failure failure, String videoId)? error,
    TResult Function(VideoAdsModel videoAd)? advertisementLoaded,
    required TResult orElse(),
  }) {
    if (advertisementLoaded != null) {
      return advertisementLoaded(videoAd);
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
    required TResult Function(_AdvertisementLoaded value) advertisementLoaded,
  }) {
    return advertisementLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AdvertisementLoaded value)? advertisementLoaded,
  }) {
    return advertisementLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AdvertisementLoaded value)? advertisementLoaded,
    required TResult orElse(),
  }) {
    if (advertisementLoaded != null) {
      return advertisementLoaded(this);
    }
    return orElse();
  }
}

abstract class _AdvertisementLoaded implements VideoState {
  const factory _AdvertisementLoaded({required final VideoAdsModel videoAd}) =
      _$_AdvertisementLoaded;

  VideoAdsModel get videoAd;
  @JsonKey(ignore: true)
  _$$_AdvertisementLoadedCopyWith<_$_AdvertisementLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
