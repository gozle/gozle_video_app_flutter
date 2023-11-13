part of 'channel_subscription_cubit.dart';

@freezed
class ChannelSubscriptionState with _$ChannelSubscriptionState {
  const factory ChannelSubscriptionState.subscribed() = _Subscribed;
  const factory ChannelSubscriptionState.unsubscribed() = _Unsubscribed;
}
