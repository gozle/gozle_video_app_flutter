import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/search/domain/use_cases/seach_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'search_video_event.dart';
part 'search_video_state.dart';
part 'search_video_bloc.freezed.dart';

class SearchVideoBloc extends Bloc<SearchVideoEvent, SearchVideoState> {
  SearchVideoBloc() : super(const SearchVideoState.initial()) {
    on<_SearchEvent>(_onSearch);
    on<_LoadMoreEvent>(_onLoadMore);
  }

  SearchVideoEvent? lastEvent;

  SearchUseCases get _searchUseCases => locator<SearchUseCases>();

  static int amount = 10; // You can adjust this number

  Future<void> _onSearch(
    _SearchEvent event,
    Emitter<SearchVideoState> emit,
  ) async {
    lastEvent = event;

    emit(const SearchVideoState.loading(oldVideos: []));

    final result = await _searchUseCases.searchVideos(
      query: event.query,
      page: 1,
      amount: amount,
    );
    final cResult = await _searchUseCases.searchChannels(
        query: event.query, amount: 2, page: 1);
    if (lastEvent != event) return;

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(SearchVideoState.error(
              falure: failure, oldVideos: [], lastEvent: event));
        }
      },
      (videos) {
        final hasReachedMax = videos.length < amount;
        var channels = cResult.getOrElse(() => []);
        emit(SearchVideoState.loaded(
          videos: videos,
          channels: channels,
          hasReachedMax: hasReachedMax,
          query: event.query,
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    _LoadMoreEvent event,
    Emitter<SearchVideoState> emit,
  ) async {
    lastEvent = event;

    final nextPage = (event.oldVideos.length / amount).round() + 1;

    final result = await _searchUseCases.searchVideos(
      query: event.query,
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
          emit(SearchVideoState.error(
            falure: failure,
            oldVideos: event.oldVideos,
            lastEvent: event,
          ));
        }
      },
      (videos) {
        final hasReachedMax = videos.length < amount;
        emit(SearchVideoState.loaded(
          videos: event.oldVideos + videos,
          channels: event.oldChannels,
          hasReachedMax: hasReachedMax,
          query: event.query,
        ));
      },
    );
  }
}
