part of 'search_video_bloc.dart';

@freezed
class SearchVideoEvent with _$SearchVideoEvent {
  const factory SearchVideoEvent.search(String query) = _SearchEvent;
  const factory SearchVideoEvent.loadMore(
          String query, List<Video> oldVideos, List<Channel> oldChannels) =
      _LoadMoreEvent;
}
