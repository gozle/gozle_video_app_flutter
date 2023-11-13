part of 'popular_channel_list_bloc.dart';

@freezed
class PopularChannelListEvent with _$PopularChannelListEvent {
  const factory PopularChannelListEvent.load() = _LoadEvent;

  const factory PopularChannelListEvent.loadMore(List<Channel> oldChannels) = _LoadMoreEvent;
}
