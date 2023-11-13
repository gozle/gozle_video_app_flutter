import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/subscriptions/domain/use_cases/subscription_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'subscribed_channel_video_list_event.dart';
part 'subscribed_channel_video_list_state.dart';
part 'subscribed_channel_video_list_bloc.freezed.dart';

class SubscribedChannelVideoListBloc
    extends Bloc<SubscribedChannelVideoListEvent, SubscribedChannelVideoListState> {
  SubscribedChannelVideoListBloc() : super(const SubscribedChannelVideoListState.initial()) {
    on<_LoadEvent>(_onLoad);
    on<_LoadMoreEvent>(_onLoadMore);
  }

  SubscribedChannelVideoListEvent? lastEvent;

  SubscriptionsUseCases get _subscriptionUseCases => locator<SubscriptionsUseCases>();

  static int amount = 10; // You can adjust this number

  Future<void> _onLoad(
    _LoadEvent event,
    Emitter<SubscribedChannelVideoListState> emit,
  ) async {
    lastEvent = event;
    emit(SubscribedChannelVideoListState.loading(
      oldVideos: [],
      channelId: event.channelId,
    ));

    final result = await _subscriptionUseCases.getVideosByChannel(
      channelId: event.channelId,
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
          emit(SubscribedChannelVideoListState.error(
            falure: failure,
            oldVideos: [],
            lastEvent: event,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length < amount;

        emit(SubscribedChannelVideoListState.loaded(
            videos: videos, hasReachedMax: hasReachedMax, channelId: event.channelId));
      },
    );
  }

  Future<void> _onLoadMore(
    _LoadMoreEvent event,
    Emitter<SubscribedChannelVideoListState> emit,
  ) async {
    lastEvent = event;

    emit(SubscribedChannelVideoListState.loading(
      oldVideos: event.oldVideos,
      channelId: event.channelId,
    ));

    final nextPage = (event.oldVideos.length / amount).round() + 1;

    final result = await _subscriptionUseCases.getVideosByChannel(
      channelId: event.channelId,
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
          emit(SubscribedChannelVideoListState.error(
            falure: failure,
            oldVideos: event.oldVideos,
            lastEvent: event,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length < amount;

        emit(SubscribedChannelVideoListState.loaded(
            videos: event.oldVideos + videos, hasReachedMax: hasReachedMax, channelId: event.channelId));
      },
    );
  }
}
