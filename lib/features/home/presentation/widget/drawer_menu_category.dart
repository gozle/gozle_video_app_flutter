//TODO: if no need clear it

// import 'package:flutter/material.dart';
// import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
// import 'package:video_gozle/features/home/presentation/widget/category_item_widget.dart';
//
// import '../../domain/models/drawer_menu_category.dart';
// import 'drawer_category_item_widget.dart';
//
// class DrawerMenuCategoryListWidget extends StatelessWidget {
//   const DrawerMenuCategoryListWidget({
//     super.key,
//     required this.selectedCategory,
//     required this.categories,
//     required this.onCategorySelected,
//     this.enablePlaceHolder = true,
//   });
//
//   final DrawerMenuCategory? selectedCategory;
//
//   final List<DrawerMenuCategory> categories;
//
//   final bool enablePlaceHolder;
//
//   final Function(DrawerMenuCategory drawerMenuCategory) onCategorySelected;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       // padding: const EdgeInsets.symmetric(horizontal: 18),
//       shrinkWrap: true,
//       itemCount:
//       categories.isEmpty && enablePlaceHolder ? 4 : categories.length,
//       separatorBuilder: (context, index) {
//         return const SizedBox(width: 10);
//       },
//       itemBuilder: (context, index) {
//         if (categories.isEmpty && enablePlaceHolder) {
//           return SizedBox(
//             width: 100,
//             child: DrawerCategoryItemWidget(
//               onTap: () {},
//               isSelected: false,
//               name: '',
//             ),
//           );
//         } else {
//           return DrawerCategoryItemWidget(
//             onTap: () {
//               onCategorySelected.call(categories[index]);
//             },
//             isSelected: selectedCategory == categories[index],
//             name: categories[index].categoryName ?? categories[index].categoryName ?? '',
//             iconAsset: categories[index].categoryIcon,
//           );
//         }
//       },
//     );
//   }
// }
