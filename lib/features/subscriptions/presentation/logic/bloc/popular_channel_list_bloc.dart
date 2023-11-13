import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/subscriptions/domain/use_cases/subscription_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'popular_channel_list_event.dart';
part 'popular_channel_list_state.dart';
part 'popular_channel_list_bloc.freezed.dart';

class PopularChannelListBloc extends Bloc<PopularChannelListEvent, PopularChannelListState> {
  PopularChannelListBloc() : super(const PopularChannelListState.loading(oldChannels: [])) {
    on<_LoadEvent>(_onLoad);
    on<_LoadMoreEvent>(_onLoadMore);

    add(const PopularChannelListEvent.load());
  }

  SubscriptionsUseCases get _subscriptionUseCases => locator<SubscriptionsUseCases>();

  PopularChannelListEvent? lastEvent;

  static int amount = 10;

  FutureOr<void> _onLoad(_LoadEvent event, Emitter<PopularChannelListState> emit) async {
    lastEvent = event;
    emit(const PopularChannelListState.loading(oldChannels: []));

    final result = await _subscriptionUseCases.getPopularChannels(
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
          emit(PopularChannelListState.error(
            falure: failure,
            oldChannels: [],
            lastEvent: event,
          ));
        }
      },
      (channels) {
        final hasReachedMax = channels.length < amount;

        emit(PopularChannelListState.loaded(
          channels: channels,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  FutureOr<void> _onLoadMore(_LoadMoreEvent event, Emitter<PopularChannelListState> emit) async {
    lastEvent = event;

    final nextPage = (event.oldChannels.length / amount).round() + 1;

    final result = await _subscriptionUseCases.getPopularChannels(
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
          emit(PopularChannelListState.error(
            falure: failure,
            oldChannels: event.oldChannels,
            lastEvent: event,
          ));
        }
      },
      (channels) {
        final hasReachedMax = channels.length < amount;

        emit(PopularChannelListState.loaded(
          channels: event.oldChannels + channels,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }
}
