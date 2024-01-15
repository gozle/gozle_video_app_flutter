part of 'channel_popular_details_bloc.dart';

@freezed
class ChannelPopularDetailsState with _$ChannelPopularDetailsState {
  const factory ChannelPopularDetailsState.loading({required List<Channel> oldItems}) = _Loading;
  const factory ChannelPopularDetailsState.loaded({
    required List<Channel> items,
    required bool hasReachedMax,
  }) = _Loaded;
  const factory ChannelPopularDetailsState.error({
    required Failure falure,
    required List<Channel> oldItems,
    required ChannelPopularDetailsEvent lastEvent,
  }) = _Error;
}
