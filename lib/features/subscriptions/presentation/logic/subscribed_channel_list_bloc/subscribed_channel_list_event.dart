part of 'subscribed_channel_list_bloc.dart';

@freezed
class SubscribedChannelListEvent with _$SubscribedChannelListEvent {
  const factory SubscribedChannelListEvent.load() = _LoadEvent;

  const factory SubscribedChannelListEvent.loadMore(List<Channel> oldChannels) = _LoadMoreEvent;
}
