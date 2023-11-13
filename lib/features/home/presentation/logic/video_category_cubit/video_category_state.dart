part of 'video_category_cubit.dart';

@freezed
class VideoCategoryState with _$VideoCategoryState {
  const factory VideoCategoryState.loading() = _Loading;
  const factory VideoCategoryState.loaded({required List<VideoCategory> categories}) = _Loaded;
  const factory VideoCategoryState.error({
    required Failure falure,
  }) = _Error;
}
