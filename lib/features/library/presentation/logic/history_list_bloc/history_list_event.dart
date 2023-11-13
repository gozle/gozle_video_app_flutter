part of 'history_list_bloc.dart';

@freezed
class HistoryListEvent with _$HistoryListEvent {
  const factory HistoryListEvent.load() = _Load;

  const factory HistoryListEvent.loadMore({
    required List<Video> oldVideos,
  }) = _LoadMore;
}
