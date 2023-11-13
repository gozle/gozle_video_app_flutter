// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/auth/presentation/logic/user_bloc/user_bloc.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/home/domain/use_cases/home_use_case.dart';
import 'package:video_gozle/injection.dart';

part 'video_list_event.dart';
part 'video_list_state.dart';
part 'video_list_bloc.freezed.dart';

class VideoListBloc extends Bloc<VideoListEvent, VideoListState> {
  final UserBloc userBloc;
  VideoListBloc({required this.userBloc}) : super(const VideoListState.popularLoading(oldVideos: [])) {
    on<_LoadEvent>(_onPopularLoad);
    on<_LoadMoreEvent>(_onPopularLoadMore);
    on<_ByCategoryLoadEvent>(_onByCategoryLoad);
    on<_ByCategoryLoadMoreEvent>(_onByCategoryLoadMore);

    add(const VideoListEvent.popularLoad());
  }

  VideoListEvent? lastEvent;

  HomeUseCases get _homeUseCases => locator<HomeUseCases>();

  static int amount = AppConstants.amount;

  // популярные за сколько дней
  static const int time = 2;

  Future<void> _onPopularLoad(
    _LoadEvent event,
    Emitter<VideoListState> emit,
  ) async {
    lastEvent = event;
    emit(const VideoListState.popularLoading(oldVideos: []));

    final result = await _homeUseCases.getPopular(page: 1, amount: amount, time: time);

    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(VideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: [],
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;

        emit(VideoListState.popularLoaded(
          videos: videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onPopularLoadMore(
    _LoadMoreEvent event,
    Emitter<VideoListState> emit,
  ) async {
    lastEvent = event;

    emit(VideoListState.popularLoading(oldVideos: event.oldVideos));

    final nextPage = (event.oldVideos.length / amount).round() + 1;
    final result = await _homeUseCases.getPopular(page: nextPage, amount: amount, time: time);

    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(VideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: event.oldVideos,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(
          VideoListState.popularLoaded(
            hasReachedMax: hasReachedMax,
            videos: event.oldVideos + videos,
          ),
        );
      },
    );
  }

  Future<void> _onByCategoryLoad(
    _ByCategoryLoadEvent event,
    Emitter<VideoListState> emit,
  ) async {
    lastEvent = event;

    emit(VideoListState.categoryLoading(
      oldVideos: [],
      category: event.category,
    ));

    final result = await _homeUseCases.getVideoByCategory(
      page: 1,
      amount: amount,
      category: event.category,
    );

    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(VideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: [],
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        state.whenOrNull(
          categoryLoading: (oldItems, category) {
            if (category != event.category) return;
            emit(VideoListState.byCategoryLoaded(
              videos: videos,
              hasReachedMax: hasReachedMax,
              category: event.category,
            ));
          },
        );
      },
    );
  }

  Future<void> _onByCategoryLoadMore(
    _ByCategoryLoadMoreEvent event,
    Emitter<VideoListState> emit,
  ) async {
    lastEvent = event;

    emit(VideoListState.categoryLoading(
      oldVideos: event.oldVideos,
      category: event.category,
    ));

    final nextPage = (event.oldVideos.length / amount).round() + 1;

    final result = await _homeUseCases.getVideoByCategory(
      page: nextPage,
      amount: amount,
      category: event.category,
    );

    if (lastEvent != event) return;

    state.whenOrNull(
      categoryLoading: (oldVideos, category) {
        if (category != event.category) return;

        result.fold(
          (failure) {
            if (failure is SocketFailure) {
              Future.delayed(const Duration(seconds: 5)).then((value) {
                add(event);
              });
            } else {
              emit(VideoListState.error(
                lastEvent: event,
                falure: failure,
                oldVideos: event.oldVideos,
              ));
            }
          },
          (videos) {
            final hasReachedMax = videos.length != amount;
            emit(VideoListState.byCategoryLoaded(
              videos: event.oldVideos + videos,
              hasReachedMax: hasReachedMax,
              category: event.category,
            ));
          },
        );
      },
    );
  }
}
