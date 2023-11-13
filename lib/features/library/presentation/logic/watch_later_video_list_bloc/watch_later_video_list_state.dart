part of 'watch_later_video_list_bloc.dart';

@freezed
class WatchLaterVideoListState with _$WatchLaterVideoListState {
  const factory WatchLaterVideoListState.initial() = _Initial;

  const factory WatchLaterVideoListState.loading({
    required List<Video> oldVideos,
  }) = _Loading;

  const factory WatchLaterVideoListState.loaded({
    required List<Video> videos,
    required bool hasReachedMax,
  }) = _Loaded;

  const factory WatchLaterVideoListState.error({
    required WatchLaterVideoListEvent lastEvent,
    required Failure falure,
    required List<Video> oldVideos,
  }) = _Error;
}
