import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/use_cases/channel_use_cases.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/injection.dart';

part 'channel_details_video_list_event.dart';
part 'channel_details_video_list_state.dart';
part 'channel_details_video_list_bloc.freezed.dart';

class ChannelDetailsVideoListBloc extends Bloc<ChannelDetailsVideoListEvent, ChannelDetailsVideoListState> {
  final String channelId;
  ChannelDetailsVideoListBloc({required this.channelId})
      : super(const ChannelDetailsVideoListState.popularLoading(oldVideos: [])) {
    on<_LoadPopular>(_onLoadPopular);
    on<_LoadMorePopular>(_onLoadMorePopular);
    on<_LoadLatest>(_onLoadLatest);
    on<_LoadMoreLatest>(_onLoadMoreLatest);
    on<_LoadOldest>(_onLoadOldest);
    on<_LoadMoreOldest>(_onLoadMoreOldest);

    add(const ChannelDetailsVideoListEvent.loadLatest());
  }

  ChannelDetailsVideoListEvent? lastEvent;

  ChannelUseCases get channelUseCases => locator<ChannelUseCases>();

  static int amount = AppConstants.amount;

  Future<void> _onLoadPopular(
    _LoadPopular event,
    Emitter<ChannelDetailsVideoListState> emit,
  ) async {
    lastEvent = event;
    emit(const ChannelDetailsVideoListState.popularLoading(oldVideos: []));

    final result = await channelUseCases.getPopularVideos(
      channelId: channelId,
      amount: amount,
      page: 1,
    );

    if (lastEvent != event) return;
    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(ChannelDetailsVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: [],
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(ChannelDetailsVideoListState.popularLoaded(
          videos: videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onLoadMorePopular(
    _LoadMorePopular event,
    Emitter<ChannelDetailsVideoListState> emit,
  ) async {
    lastEvent = event;

    emit(ChannelDetailsVideoListState.popularLoading(oldVideos: event.oldVideos));

    final nextPage = (event.oldVideos.length / amount).round() + 1;

    final result = await channelUseCases.getPopularVideos(
      channelId: channelId,
      amount: amount,
      page: nextPage,
    );

    if (lastEvent != event) return;
    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(ChannelDetailsVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: event.oldVideos,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(ChannelDetailsVideoListState.popularLoaded(
          videos: event.oldVideos + videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onLoadLatest(
    _LoadLatest event,
    Emitter<ChannelDetailsVideoListState> emit,
  ) async {
    lastEvent = event;

    emit(const ChannelDetailsVideoListState.latestLoading(oldVideos: []));

    final result = await channelUseCases.getLatestVideos(
      channelId: channelId,
      amount: amount,
      page: 1,
    );
    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(ChannelDetailsVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: [],
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(ChannelDetailsVideoListState.latestLoaded(
          videos: videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onLoadMoreLatest(
    _LoadMoreLatest event,
    Emitter<ChannelDetailsVideoListState> emit,
  ) async {
    lastEvent = event;

    emit(ChannelDetailsVideoListState.latestLoading(oldVideos: event.oldVideos));

    final nextPage = (event.oldVideos.length / amount).round() + 1;

    final result = await channelUseCases.getLatestVideos(
      channelId: channelId,
      amount: amount,
      page: nextPage,
    );
    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(ChannelDetailsVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: event.oldVideos,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(ChannelDetailsVideoListState.latestLoaded(
          videos: event.oldVideos + videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onLoadOldest(
    _LoadOldest event,
    Emitter<ChannelDetailsVideoListState> emit,
  ) async {
    lastEvent = event;

    emit(const ChannelDetailsVideoListState.oldestLoading(oldVideos: []));

    final result = await channelUseCases.getOldestVideos(
      channelId: channelId,
      amount: amount,
      page: 1,
    );

    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(ChannelDetailsVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: [],
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(ChannelDetailsVideoListState.oldestLoaded(
          videos: videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onLoadMoreOldest(
    _LoadMoreOldest event,
    Emitter<ChannelDetailsVideoListState> emit,
  ) async {
    lastEvent = event;

    emit(ChannelDetailsVideoListState.oldestLoading(oldVideos: event.oldVideos));

    final nextPage = (event.oldVideos.length / amount).round() + 1;

    final result = await channelUseCases.getOldestVideos(
      channelId: channelId,
      amount: amount,
      page: nextPage,
    );

    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(ChannelDetailsVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: event.oldVideos,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(ChannelDetailsVideoListState.oldestLoaded(
          videos: event.oldVideos + videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }
}
