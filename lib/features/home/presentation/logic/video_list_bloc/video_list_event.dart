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

  const factory VideoListEvent.channelsLoad() = _ChannelEvent;

  const factory VideoListEvent.channelsLoadMore({
    required List<Channel> channels,
  }) = _ChannelMoreEvent;

  const factory VideoListEvent.byCategoryload({
    required VideoCategory category,
  }) = _ByCategoryLoadEvent;

  const factory VideoListEvent.byCategoryloadMore({
    required List<Video> oldVideos,
    required VideoCategory category,
  }) = _ByCategoryLoadMoreEvent;
}
