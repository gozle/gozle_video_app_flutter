import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart';
import 'package:video_gozle/features/home/domain/use_cases/home_use_case.dart';
import 'package:video_gozle/features/settings/domain/use_cases/settings_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'banner_state.dart';
part 'banner_cubit.freezed.dart';

class BannerCubit extends Cubit<BannerState> {
  BannerCubit() : super(const BannerState.loading()) {
    load();
  }

  HomeUseCases get _homeUseCases => locator<HomeUseCases>();
  SettingUseCases get settingsUseCases => locator<SettingUseCases>();

  Future<void> load() async {
    emit(const BannerState.loading());
    var locale = settingsUseCases.readLocale();
    final result = await _homeUseCases.getBanners(
        page: 1, amount: 1, language: locale.languageCode);

    result.fold(
      (failure) {
        // if (failure is SocketFailure) {
        //   Future.delayed(const Duration(seconds: 5)).then((value) {
        //     load();
        //   });
        // } else {
        //   emit(BannerState.error(
        //     falure: failure,
        //   ));
        // }
      },
      (banners) {
        emit(BannerState.loaded(banners: banners));
      },
    );
  }
}
