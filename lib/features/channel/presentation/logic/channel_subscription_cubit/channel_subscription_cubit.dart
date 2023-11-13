import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/features/channel/domain/use_cases/channel_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'channel_subscription_state.dart';
part 'channel_subscription_cubit.freezed.dart';

class ChannelSubscriptionCubit extends Cubit<ChannelSubscriptionState> {
  final String channelId;
  final bool isSubscribed;

  ChannelSubscriptionCubit({required this.channelId, required this.isSubscribed})
      : super(const ChannelSubscriptionState.unsubscribed()) {
    if (isSubscribed) {
      emit(const ChannelSubscriptionState.subscribed());
    } else {
      emit(const ChannelSubscriptionState.unsubscribed());
    }
  }

  ChannelUseCases get channelUseCases => locator<ChannelUseCases>();

  Future<void> subscribe() async {
    emit(const ChannelSubscriptionState.subscribed());

    final result = await channelUseCases.subscribe(channelId: channelId);

    result.fold(
      (failure) {
        emit(const ChannelSubscriptionState.unsubscribed());
      },
      (success) {
        if (state is _Subscribed) {
          emit(const ChannelSubscriptionState.subscribed());
        }
      },
    );
  }

  Future<void> unsubscribe() async {
    emit(const ChannelSubscriptionState.unsubscribed());

    final result = await channelUseCases.unsubscribe(channelId: channelId);

    result.fold(
      (failure) {
        emit(const ChannelSubscriptionState.subscribed());
      },
      (success) {
        if (state is _Unsubscribed) {
          emit(const ChannelSubscriptionState.unsubscribed());
        }
      },
    );
  }
}
