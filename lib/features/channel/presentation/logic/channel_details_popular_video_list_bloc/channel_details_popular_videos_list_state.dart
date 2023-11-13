part of 'channel_details_popular_videos_list_bloc.dart';

@freezed
class ChannelDetailsPopularVideosListState with _$ChannelDetailsPopularVideosListState {
  const factory ChannelDetailsPopularVideosListState.loading({required List<Video> oldItems}) = _Loading;
  const factory ChannelDetailsPopularVideosListState.loaded({
    required List<Video> items,
    required bool hasReachedMax,
  }) = _Loaded;
  const factory ChannelDetailsPopularVideosListState.error({
    required Failure falure,
    required List<Video> oldItems,
    required ChannelDetailsPopularVideosListEvent lastEvent,
  }) = _Error;
}
