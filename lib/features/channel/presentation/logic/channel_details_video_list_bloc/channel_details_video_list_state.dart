part of 'channel_details_video_list_bloc.dart';

@freezed
class ChannelDetailsVideoListState with _$ChannelDetailsVideoListState {
  const factory ChannelDetailsVideoListState.popularLoading({required List<Video> oldVideos}) =
      _PopularLoading;
  const factory ChannelDetailsVideoListState.latestLoading({required List<Video> oldVideos}) = _LatestLoading;
  const factory ChannelDetailsVideoListState.oldestLoading({required List<Video> oldVideos}) = _OldestLoading;

  const factory ChannelDetailsVideoListState.popularLoaded({
    required List<Video> videos,
    required bool hasReachedMax,
  }) = _PopularLoaded;

  const factory ChannelDetailsVideoListState.latestLoaded({
    required List<Video> videos,
    required bool hasReachedMax,
  }) = _LatestLoaded;

  const factory ChannelDetailsVideoListState.oldestLoaded({
    required List<Video> videos,
    required bool hasReachedMax,
  }) = _OldestLoaded;

  const factory ChannelDetailsVideoListState.error({
    required Failure falure,
    required List<Video> oldVideos,
    required ChannelDetailsVideoListEvent lastEvent,
  }) = _Error;
}
