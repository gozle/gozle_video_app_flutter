part of 'channel_details_cubit.dart';

@freezed
class ChannelDetailsState with _$ChannelDetailsState {
  const factory ChannelDetailsState.loading({String? channelName}) = _Loading;

  const factory ChannelDetailsState.loaded({
    required Channel channel,
  }) = _Loaded;

  const factory ChannelDetailsState.error({required Failure falure}) = _Error;
}
