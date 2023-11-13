part of 'popular_channel_list_bloc.dart';

@freezed
class PopularChannelListState with _$PopularChannelListState {
  const factory PopularChannelListState.loading({required List<Channel> oldChannels}) = _Loading;

  const factory PopularChannelListState.loaded({
    required List<Channel> channels,
    required bool hasReachedMax,
  }) = _Loaded;

  const factory PopularChannelListState.error({
    required Failure falure,
    required List<Channel> oldChannels,
    required PopularChannelListEvent lastEvent,
  }) = _Error;
}
