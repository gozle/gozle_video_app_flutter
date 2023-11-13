part of 'suggested_video_list_bloc.dart';

@freezed
class SuggestedVideoListEvent with _$SuggestedVideoListEvent {
  const factory SuggestedVideoListEvent.suggestedLoad() = _LoadEvent;

  const factory SuggestedVideoListEvent.suggestedLoadMore({
    required List<Video> oldVideos,
  }) = _LoadMoreEvent;

  const factory SuggestedVideoListEvent.byCategoryload({
    required VideoCategory category,
  }) = _ByCategoryLoadEvent;

  const factory SuggestedVideoListEvent.byCategoryloadMore({
    required List<Video> oldVideos,
    required VideoCategory category,
  }) = _ByCategoryLoadMoreEvent;
}
