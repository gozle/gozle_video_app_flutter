part of 'subscribed_channel_video_list_bloc.dart';

@freezed
class SubscribedChannelVideoListState with _$SubscribedChannelVideoListState {
  const factory SubscribedChannelVideoListState.initial() = _Initial;
  const factory SubscribedChannelVideoListState.loading({
    required List<Video> oldVideos,
    required String channelId,
  }) = _Loading;

  const factory SubscribedChannelVideoListState.loaded({
    required List<Video> videos,
    required bool hasReachedMax,
    required String channelId,
  }) = _Loaded;

  const factory SubscribedChannelVideoListState.error({
    required Failure falure,
    required List<Video> oldVideos,
    required SubscribedChannelVideoListEvent lastEvent,
  }) = _Error;
}
