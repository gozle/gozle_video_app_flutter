part of 'banner_cubit.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.loading() = _Loading;
  const factory BannerState.loaded({Banner? banners}) = _Loaded;
  const factory BannerState.error({
    required Failure falure,
  }) = _Error;
}
