import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/library/domain/use_cases/library_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'watch_later_video_list_event.dart';
part 'watch_later_video_list_state.dart';
part 'watch_later_video_list_bloc.freezed.dart';

class WatchLaterVideoListBloc extends Bloc<WatchLaterVideoListEvent, WatchLaterVideoListState> {
  WatchLaterVideoListBloc() : super(const WatchLaterVideoListState.initial()) {
    on<_LoadWatchLater>(_onLoadWatchLater);
    on<_LoadMoreWatchLater>(_onLoadMoreWatchLater);
  }

  LibraryUseCases get libraryUseCases => locator<LibraryUseCases>();

  static int amount = AppConstants.amount;

  Future<void> _onLoadWatchLater(
    _LoadWatchLater event,
    Emitter<WatchLaterVideoListState> emit,
  ) async {
    emit(const WatchLaterVideoListState.loading(oldVideos: []));

    final result = await libraryUseCases.getVideosWatchLater(
      page: 1,
      amount: amount,
    );

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(WatchLaterVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: [],
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(WatchLaterVideoListState.loaded(
          videos: videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onLoadMoreWatchLater(
    _LoadMoreWatchLater event,
    Emitter<WatchLaterVideoListState> emit,
  ) async {
    emit(WatchLaterVideoListState.loading(oldVideos: event.oldVideos));

    final nextPage = (event.oldVideos.length / amount).round() + 1;

    final result = await libraryUseCases.getVideosWatchLater(
      page: nextPage,
      amount: amount,
    );

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(WatchLaterVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: event.oldVideos,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(WatchLaterVideoListState.loaded(
          videos: event.oldVideos + videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }
}
