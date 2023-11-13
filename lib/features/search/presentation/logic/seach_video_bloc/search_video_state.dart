part of 'search_video_bloc.dart';

@freezed
class SearchVideoState with _$SearchVideoState {
  const factory SearchVideoState.initial() = _Initial;
  const factory SearchVideoState.loading({required List<Video> oldVideos}) = _Loading;
  const factory SearchVideoState.loaded({
    required List<Video> videos,
    required bool hasReachedMax,
    required String query,
  }) = _Loaded;
  const factory SearchVideoState.error({
    required Failure falure,
    required List<Video> oldVideos,
    required SearchVideoEvent lastEvent,
  }) = _Error;
}
