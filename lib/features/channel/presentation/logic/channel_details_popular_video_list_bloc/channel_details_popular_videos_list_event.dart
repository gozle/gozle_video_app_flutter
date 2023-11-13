part of 'channel_details_popular_videos_list_bloc.dart';

@freezed
class ChannelDetailsPopularVideosListEvent with _$ChannelDetailsPopularVideosListEvent {
  const factory ChannelDetailsPopularVideosListEvent.load() = _Load;

  const factory ChannelDetailsPopularVideosListEvent.loadMore({required List<Video> oldItems}) = _LoadMore;
}
