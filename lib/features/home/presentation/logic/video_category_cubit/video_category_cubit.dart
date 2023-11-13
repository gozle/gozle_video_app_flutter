import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/home/domain/use_cases/home_use_case.dart';
import 'package:video_gozle/injection.dart';

part 'video_category_state.dart';
part 'video_category_cubit.freezed.dart';

class VideoCategoryCubit extends Cubit<VideoCategoryState> {
  VideoCategoryCubit() : super(const VideoCategoryState.loading()) {
    load();
  }

  HomeUseCases get _homeUseCases => locator<HomeUseCases>();

  Future<void> load() async {
    emit(const VideoCategoryState.loading());

    final result = await _homeUseCases.getVideoCategories();

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            load();
          });
        } else {
          emit(VideoCategoryState.error(
            falure: failure,
          ));
        }
      },
      (categories) {
        emit(VideoCategoryState.loaded(categories: categories));
      },
    );
  }
}
