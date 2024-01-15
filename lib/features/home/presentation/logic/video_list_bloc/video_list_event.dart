part of 'video_list_bloc.dart';

@freezed
class VideoListEvent with _$VideoListEvent {
  const factory VideoListEvent.popularLoad() = _LoadEvent;

  const factory VideoListEvent.popularLoadMore({
    required List<Video> oldVideos,
  }) = _LoadMoreEvent;

  const factory VideoListEvent.latestLoad() = _LatestEvent;

  const factory VideoListEvent.latestLoadMore({
    required List<Video> latestVideos,
  }) = _LatestMoreEvent;

  const factory VideoListEvent.byCategoryload({
    required VideoCategory category,
  }) = _ByCategoryLoadEvent;

  //TODO: if no need clear it
  // const factory VideoListEvent.byDrawerMenuCategoryload({
  //   required DrawerMenuCategory category,
  // }) = _ByDrawerMenuCategoryLoadEvent;

  const factory VideoListEvent.byCategoryloadMore({
    required List<Video> oldVideos,
    required VideoCategory category,
  }) = _ByCategoryLoadMoreEvent;
}
