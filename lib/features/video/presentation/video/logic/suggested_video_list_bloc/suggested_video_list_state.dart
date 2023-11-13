part of 'suggested_video_list_bloc.dart';

@freezed
class SuggestedVideoListState with _$SuggestedVideoListState {
  const factory SuggestedVideoListState.suggestedLoading({
    required List<Video> oldVideos,
  }) = _PopularLoadingState;

  const factory SuggestedVideoListState.suggestedLoaded({
    required List<Video> videos,
    required bool hasReachedMax,
  }) = _PopularLoadedState;

  const factory SuggestedVideoListState.categoryLoading({
    required List<Video> oldVideos,
    VideoCategory? category,
  }) = _ByCategoryLoadingState;

  const factory SuggestedVideoListState.byCategoryLoaded({
    required List<Video> videos,
    required VideoCategory category,
    required bool hasReachedMax,
  }) = _ByCategoryLoadedState;

  const factory SuggestedVideoListState.error({
    required List<Video> oldVideos,
    required Failure falure,
    required SuggestedVideoListEvent lastEvent,
  }) = _ErrorState;
}
