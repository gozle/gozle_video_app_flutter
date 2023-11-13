import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/subscriptions/domain/use_cases/subscription_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'subscribed_channel_list_event.dart';
part 'subscribed_channel_list_state.dart';
part 'subscribed_channel_list_bloc.freezed.dart';

class SubscribedChannelListBloc extends Bloc<SubscribedChannelListEvent, SubscribedChannelListState> {
  SubscribedChannelListBloc() : super(const SubscribedChannelListState.loading(oldChannels: [])) {
    on<_LoadEvent>(_onLoad);

    on<_LoadMoreEvent>(_onLoadMore);
  }

  SubscriptionsUseCases get _subscriptionUseCases => locator<SubscriptionsUseCases>();

  SubscribedChannelListEvent? lastEvent;

  static int amount = 10; // You can adjust this number

  Future<void> _onLoad(
    _LoadEvent event,
    Emitter<SubscribedChannelListState> emit,
  ) async {
    lastEvent = event;
    emit(const SubscribedChannelListState.loading(oldChannels: []));

    final result = await _subscriptionUseCases.getSubscribedChannels(
      page: 1,
      amount: amount,
    );
    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(SubscribedChannelListState.error(
            falure: failure,
            oldChannels: [],
            lastEvent: event,
          ));
        }
      },
      (channels) {
        final hasReachedMax = channels.length < amount;

        emit(SubscribedChannelListState.loaded(
          channels: channels,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    _LoadMoreEvent event,
    Emitter<SubscribedChannelListState> emit,
  ) async {
    lastEvent = event;

    final nextPage = (event.oldChannels.length / amount).round() + 1;

    final result = await _subscriptionUseCases.getSubscribedChannels(
      page: nextPage,
      amount: amount,
    );
    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(SubscribedChannelListState.error(
            falure: failure,
            oldChannels: event.oldChannels,
            lastEvent: event,
          ));
        }
      },
      (channels) {
        final hasReachedMax = channels.length < amount;

        emit(SubscribedChannelListState.loaded(
          channels: event.oldChannels + channels,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }
}
