import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/library/domain/use_cases/library_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'history_list_event.dart';
part 'history_list_state.dart';
part 'history_list_bloc.freezed.dart';

class HistoryListBloc extends Bloc<HistoryListEvent, HistoryListState> {
  HistoryListBloc() : super(const HistoryListState.loading(videos: [])) {
    on<_Load>(_onLoad);
    on<_LoadMore>(_onLoadMore);
  }

  static const amount = 15;

  LibraryUseCases get _libraryUseCases => locator<LibraryUseCases>();

  FutureOr<void> _onLoad(_Load event, Emitter<HistoryListState> emit) async {
    emit(const HistoryListState.loading(videos: []));

    final result = await _libraryUseCases.getVideosHistory(page: 1, amount: amount);

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(HistoryListState.error(lastEvent: event, falure: failure, oldVideos: []));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;

        emit(HistoryListState.loaded(
          videos: videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  FutureOr<void> _onLoadMore(_LoadMore event, Emitter<HistoryListState> emit) async {
    emit(HistoryListState.loading(videos: event.oldVideos));

    final nextPage = (event.oldVideos.length / amount).round() + 1;
    final result = await _libraryUseCases.getVideosHistory(page: nextPage, amount: amount);

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(HistoryListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: event.oldVideos,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(
          HistoryListState.loaded(
            hasReachedMax: hasReachedMax,
            videos: event.oldVideos + videos,
          ),
        );
      },
    );
  }
}
