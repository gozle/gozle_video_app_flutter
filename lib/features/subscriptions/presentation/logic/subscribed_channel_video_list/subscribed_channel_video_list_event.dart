part of 'subscribed_channel_video_list_bloc.dart';

@freezed
class SubscribedChannelVideoListEvent with _$SubscribedChannelVideoListEvent {
  const factory SubscribedChannelVideoListEvent.load({required String channelId}) = _LoadEvent;
  const factory SubscribedChannelVideoListEvent.loadMore({
    required String channelId,
    required List<Video> oldVideos,
  }) = _LoadMoreEvent;
}
