part of 'subscribed_channel_list_bloc.dart';

@freezed
class SubscribedChannelListState with _$SubscribedChannelListState {
  const factory SubscribedChannelListState.loading({required List<Channel> oldChannels}) = _Loading;

  const factory SubscribedChannelListState.loaded({
    required List<Channel> channels,
    required bool hasReachedMax,
  }) = _Loaded;

  const factory SubscribedChannelListState.error({
    required Failure falure,
    required List<Channel> oldChannels,
    required SubscribedChannelListEvent lastEvent,
  }) = _Error;
}
