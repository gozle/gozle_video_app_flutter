part of 'video_list_bloc.dart';

@freezed
class VideoListState with _$VideoListState {
  const factory VideoListState.popularLoading({
    required List<Video> oldVideos,
  }) = _PopularLoadingState;

  const factory VideoListState.popularLoaded({
    required List<Video> videos,
    required bool hasReachedMax,
  }) = _PopularLoadedState;

  const factory VideoListState.latestLoading({
    required List<Video> latestVideos,
  }) = _LatestLoadingState;

  const factory VideoListState.latestLoaded({
    required List<Video> latestVideos,
    required bool hasReachedMax,
  }) = _LatestLoadedState;

  const factory VideoListState.categoryLoading({
    required List<Video> oldVideos,
    VideoCategory? category,
  }) = _ByCategoryLoadingState;

  const factory VideoListState.byCategoryLoaded({
    required List<Video> videos,
    required VideoCategory category,
    required bool hasReachedMax,
  }) = _ByCategoryLoadedState;

  const factory VideoListState.error({
    required List<Video> oldVideos,
    required Failure falure,
    required VideoListEvent lastEvent,
  }) = _ErrorState;
}
