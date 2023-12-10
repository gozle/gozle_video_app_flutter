part of 'video_bloc.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = _Initial;
  const factory VideoState.loading({
    required String videoId,
    String? title,
  }) = _Loading;
  const factory VideoState.loaded({required Video video}) = _Loaded;
  const factory VideoState.error({
    required Failure failure,
    required String videoId,
  }) = _Error;
  const factory VideoState.advertisementLoaded({
    required VideoAdsModel videoAd,
  }) = _AdvertisementLoaded;
}
