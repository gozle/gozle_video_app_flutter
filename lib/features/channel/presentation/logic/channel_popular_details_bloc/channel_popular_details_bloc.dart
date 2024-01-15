import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/channel/domain/use_cases/channel_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'channel_popular_details_bloc.freezed.dart';

part 'channel_popular_details_event.dart';

part 'channel_popular_details_state.dart';

class ChannelPopularDetailsBloc
    extends Bloc<ChannelPopularDetailsEvent, ChannelPopularDetailsState> {
  ChannelPopularDetailsBloc() : super(const ChannelPopularDetailsState.loading(oldItems: [])) {
    on<_Load>(_onLoad);
    on<_LoadMore>(_onLoadMore);

    add(const ChannelPopularDetailsEvent.load());
  }

  ChannelPopularDetailsEvent? lastEvent;

  ChannelUseCases get channelUseCases => locator<ChannelUseCases>();

  static int amount = AppConstants.amount;

  Future<void> _onLoad(
    _Load event,
    Emitter<ChannelPopularDetailsState> emit,
  ) async {
    lastEvent = event;
    emit(const ChannelPopularDetailsState.loading(oldItems: []));

    final result = await channelUseCases.getChannelsPopular(
      // channelId: channelId,
      amount: amount,
      page: 1,
    );

    if (event != lastEvent) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(ChannelPopularDetailsState.error(
            lastEvent: event,
            falure: failure,
            oldItems: [],
          ));
        }
      },
      (channel) {
        final hasReachedMax = channel.length != amount;

        emit(ChannelPopularDetailsState.loaded(
          items: channel,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    _LoadMore event,
    Emitter<ChannelPopularDetailsState> emit,
  ) async {
    lastEvent = event;
    emit(ChannelPopularDetailsState.loading(oldItems: event.oldItems));

    final nextPage = (event.oldItems.length / amount).round() + 1;

    final result = await channelUseCases.getChannelsPopular(
      // channelId: channelId,
      amount: amount,
      page: nextPage,
    );

    if (event != lastEvent) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(ChannelPopularDetailsState.error(
            lastEvent: event,
            falure: failure,
            oldItems: event.oldItems,
          ));
        }
      },
      (channel) {
        final hasReachedMax = channel.length != amount;

        emit(ChannelPopularDetailsState.loaded(
          items: event.oldItems + channel,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }
}
