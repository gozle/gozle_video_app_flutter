import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/use_cases/channel_use_cases.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/injection.dart';

part 'channel_details_popular_videos_list_event.dart';
part 'channel_details_popular_videos_list_state.dart';
part 'channel_details_popular_videos_list_bloc.freezed.dart';

class ChannelDetailsPopularVideosListBloc
    extends Bloc<ChannelDetailsPopularVideosListEvent, ChannelDetailsPopularVideosListState> {
  final String channelId;
  ChannelDetailsPopularVideosListBloc({required this.channelId})
      : super(const ChannelDetailsPopularVideosListState.loading(oldItems: [])) {
    on<_Load>(_onLoad);
    on<_LoadMore>(_onLoadMore);

    add(const ChannelDetailsPopularVideosListEvent.load());
  }

  ChannelDetailsPopularVideosListEvent? lastEvent;

  ChannelUseCases get channelUseCases => locator<ChannelUseCases>();

  static int amount = AppConstants.amount;

  Future<void> _onLoad(
    _Load event,
    Emitter<ChannelDetailsPopularVideosListState> emit,
  ) async {
    lastEvent = event;
    emit(const ChannelDetailsPopularVideosListState.loading(oldItems: []));

    final result = await channelUseCases.getPopularVideos(
      channelId: channelId,
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
          emit(ChannelDetailsPopularVideosListState.error(
            lastEvent: event,
            falure: failure,
            oldItems: [],
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;

        emit(ChannelDetailsPopularVideosListState.loaded(
          items: videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    _LoadMore event,
    Emitter<ChannelDetailsPopularVideosListState> emit,
  ) async {
    lastEvent = event;
    emit(ChannelDetailsPopularVideosListState.loading(oldItems: event.oldItems));

    final nextPage = (event.oldItems.length / amount).round() + 1;

    final result = await channelUseCases.getPopularVideos(
      channelId: channelId,
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
          emit(ChannelDetailsPopularVideosListState.error(
            lastEvent: event,
            falure: failure,
            oldItems: event.oldItems,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;

        emit(ChannelDetailsPopularVideosListState.loaded(
          items: event.oldItems + videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }
}
