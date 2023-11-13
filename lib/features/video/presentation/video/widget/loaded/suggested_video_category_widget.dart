import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/home/presentation/widget/category_list_widget.dart';
import 'package:video_gozle/features/video/presentation/video/logic/suggested_video_list_bloc/suggested_video_list_bloc.dart';

class SuggestedVideoCategoryWidget extends StatelessWidget {
  final List<VideoCategory> categories;
  const SuggestedVideoCategoryWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestedVideoListBloc, SuggestedVideoListState>(
      builder: (context, suggestedVideoListState) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: CategoryListWidget(
            selectedCategory: suggestedVideoListState.whenOrNull(
              byCategoryLoaded: (_, category, __) => category,
              categoryLoading: (_, category) => category,
            ),
            categories: categories,
            enablePlaceHolder: false,
            onCategorySelected: (category) {
              context
                  .read<SuggestedVideoListBloc>()
                  .add(SuggestedVideoListEvent.byCategoryload(category: category));
            },
          ),
        );
      },
    );
  }
}
