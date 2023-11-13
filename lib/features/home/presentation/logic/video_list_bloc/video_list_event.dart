part of 'video_list_bloc.dart';

@freezed
class VideoListEvent with _$VideoListEvent {
  const factory VideoListEvent.popularLoad() = _LoadEvent;

  const factory VideoListEvent.popularLoadMore({
    required List<Video> oldVideos,
  }) = _LoadMoreEvent;

  const factory VideoListEvent.byCategoryload({
    required VideoCategory category,
  }) = _ByCategoryLoadEvent;

  const factory VideoListEvent.byCategoryloadMore({
    required List<Video> oldVideos,
    required VideoCategory category,
  }) = _ByCategoryLoadMoreEvent;
}
