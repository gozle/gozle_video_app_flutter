part of 'history_list_bloc.dart';

@freezed
class HistoryListState with _$HistoryListState {
  const factory HistoryListState.loaded({
    required List<Video> videos,
    required bool hasReachedMax,
  }) = _Loaded;

  const factory HistoryListState.loading({required List<Video> videos}) = _Loading;

  const factory HistoryListState.error({
    required List<Video> oldVideos,
    required HistoryListEvent lastEvent,
    required Failure falure,
  }) = _Error;
}
