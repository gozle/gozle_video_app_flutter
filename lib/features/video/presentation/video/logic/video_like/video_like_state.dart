part of 'video_like_cubit.dart';

@freezed
class VideoLikeState with _$VideoLikeState {
  const factory VideoLikeState.liked({required int likesCount}) = _Liked;
  const factory VideoLikeState.notLiked({required int likesCount}) = _NotLiked;
  const factory VideoLikeState.unauthenticated({required int likesCount}) = _UnAuthenticated;
}
