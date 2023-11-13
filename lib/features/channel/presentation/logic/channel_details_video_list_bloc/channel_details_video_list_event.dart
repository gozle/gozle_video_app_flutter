part of 'channel_details_video_list_bloc.dart';

@freezed
class ChannelDetailsVideoListEvent with _$ChannelDetailsVideoListEvent {
  const factory ChannelDetailsVideoListEvent.loadPopular() = _LoadPopular;
  const factory ChannelDetailsVideoListEvent.loadLatest() = _LoadLatest;
  const factory ChannelDetailsVideoListEvent.loadOldest() = _LoadOldest;

  const factory ChannelDetailsVideoListEvent.loadMorePopular({required List<Video> oldVideos}) =
      _LoadMorePopular;
  const factory ChannelDetailsVideoListEvent.loadMoreLatest({required List<Video> oldVideos}) =
      _LoadMoreLatest;
  const factory ChannelDetailsVideoListEvent.loadMoreOldest({required List<Video> oldVideos}) =
      _LoadMoreOldest;
}
