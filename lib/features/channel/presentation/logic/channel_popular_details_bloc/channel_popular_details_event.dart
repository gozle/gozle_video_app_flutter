part of 'channel_popular_details_bloc.dart';

@freezed
class ChannelPopularDetailsEvent with _$ChannelPopularDetailsEvent {
  const factory ChannelPopularDetailsEvent.load() = _Load;

  const factory ChannelPopularDetailsEvent.loadMore({required List<Channel> oldItems}) = _LoadMore;
}
