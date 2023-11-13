import 'package:flutter/material.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/home/presentation/widget/category_item_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.selectedCategory,
    required this.categories,
    required this.onCategorySelected,
    this.enablePlaceHolder = true,
  });

  final VideoCategory? selectedCategory;

  final List<VideoCategory> categories;

  final bool enablePlaceHolder;

  final Function(VideoCategory videoCategory) onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        itemCount: categories.isEmpty && enablePlaceHolder ? 4 : categories.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        itemBuilder: (context, index) {
          if (categories.isEmpty && enablePlaceHolder) {
            return SizedBox(
              width: 100,
              child: CategoryItemWidget(
                onTap: () {},
                isSelected: false,
                name: '',
              ),
            );
          } else {
            return CategoryItemWidget(
              onTap: () {
                onCategorySelected.call(categories[index]);
              },
              isSelected: selectedCategory == categories[index],
              name: categories[index].verbose ?? categories[index].name ?? '',
            );
          }
        },
      ),
    );
  }
}
