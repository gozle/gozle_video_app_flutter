part of 'watch_later_video_list_bloc.dart';

@freezed
class WatchLaterVideoListEvent with _$WatchLaterVideoListEvent {
  const factory WatchLaterVideoListEvent.loadWatchLater() = _LoadWatchLater;
  const factory WatchLaterVideoListEvent.loadMoreWatchLater(List<Video> oldVideos) = _LoadMoreWatchLater;
}
