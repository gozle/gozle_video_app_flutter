import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/video/domain/usecases/video_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'suggested_video_list_event.dart';
part 'suggested_video_list_state.dart';
part 'suggested_video_list_bloc.freezed.dart';

class SuggestedVideoListBloc extends Bloc<SuggestedVideoListEvent, SuggestedVideoListState> {
  final String channelId;
  SuggestedVideoListBloc({required this.channelId})
      : super(const SuggestedVideoListState.suggestedLoading(oldVideos: [])) {
    on<_LoadEvent>(_onSuggestedLoad);
    on<_LoadMoreEvent>(_onSuggestedLoadMore);
    on<_ByCategoryLoadEvent>(_onByCategoryLoad);
    on<_ByCategoryLoadMoreEvent>(_onByCategoryLoadMore);

    add(const SuggestedVideoListEvent.suggestedLoad());
  }

  VideoUseCases get videoUseCases => locator<VideoUseCases>();

  static int amount = AppConstants.amount;

  FutureOr<void> _onSuggestedLoad(_LoadEvent event, Emitter<SuggestedVideoListState> emit) async {
    emit(const SuggestedVideoListState.suggestedLoading(oldVideos: []));

    final result = await videoUseCases.getSuggestedVideos(page: 1, amount: amount, channelId: channelId);

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(SuggestedVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: [],
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;

        emit(SuggestedVideoListState.suggestedLoaded(
          videos: videos,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  FutureOr<void> _onSuggestedLoadMore(_LoadMoreEvent event, Emitter<SuggestedVideoListState> emit) async {
    emit(SuggestedVideoListState.suggestedLoading(oldVideos: event.oldVideos));

    final nextPage = (event.oldVideos.length / amount).round() + 1;
    final result =
        await videoUseCases.getSuggestedVideos(page: nextPage, amount: amount, channelId: channelId);

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(SuggestedVideoListState.error(
            lastEvent: event,
            falure: failure,
            oldVideos: event.oldVideos,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length != amount;
        emit(
          SuggestedVideoListState.suggestedLoaded(
            hasReachedMax: hasReachedMax,
            videos: event.oldVideos + videos,
          ),
        );
      },
    );
  }

  FutureOr<void> _onByCategoryLoad(_ByCategoryLoadEvent event, Emitter<SuggestedVideoListState> emit) async {
    emit(SuggestedVideoListState.categoryLoading(
      oldVideos: [],
      category: event.category,
    ));

    final result = await videoUseCases.getVideoByCategory(
      page: 1,
      amount: amount,
      category: event.category,
    );

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(SuggestedVideoListState.error(
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
            emit(SuggestedVideoListState.byCategoryLoaded(
              videos: videos,
              hasReachedMax: hasReachedMax,
              category: event.category,
            ));
          },
        );
      },
    );
  }

  FutureOr<void> _onByCategoryLoadMore(
      _ByCategoryLoadMoreEvent event, Emitter<SuggestedVideoListState> emit) async {
    emit(SuggestedVideoListState.categoryLoading(
      oldVideos: event.oldVideos,
      category: event.category,
    ));

    final nextPage = (event.oldVideos.length / amount).round() + 1;

    final result = await videoUseCases.getVideoByCategory(
      page: nextPage,
      amount: amount,
      category: event.category,
    );

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
              emit(SuggestedVideoListState.error(
                lastEvent: event,
                falure: failure,
                oldVideos: event.oldVideos,
              ));
            }
          },
          (videos) {
            final hasReachedMax = videos.length != amount;
            emit(SuggestedVideoListState.byCategoryLoaded(
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
