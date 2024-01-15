//TODO: if no need clear it

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:video_gozle/core/failure/failure.dart';
// import 'package:video_gozle/features/home/domain/models/drawer_menu_category.dart';
// import 'package:video_gozle/features/home/domain/use_cases/home_use_case.dart';
// import 'package:video_gozle/injection.dart';
//
// part 'drawer_category_state.dart';
// part 'drawer_category_cubit.freezed.dart';
//
// class DrawerMenuCategoryCubit extends Cubit<DrawerMenuCategoryState> {
//   DrawerMenuCategoryCubit() : super(const DrawerMenuCategoryState.loading()) {
//     load();
//   }
//
//   HomeUseCases get _homeUseCases => locator<HomeUseCases>();
//
//   Future<void> load() async {
//     emit(const DrawerMenuCategoryState.loading());
//
//     final result = await _homeUseCases.getDrawerCategories();
//
//     result.fold(
//       (failure) {
//         if (failure is SocketFailure) {
//           Future.delayed(const Duration(seconds: 5)).then((value) {
//             load();
//           });
//         } else {
//           emit(DrawerMenuCategoryState.error(
//             falure: failure,
//           ));
//         }
//       },
//       (categories) {
//         emit(DrawerMenuCategoryState.loaded(categories: categories));
//       },
//     );
//   }
// }
