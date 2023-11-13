import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/global/domain/models/video_list_item_type.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/sliver_error_widget.dart';
import 'package:video_gozle/features/home/presentation/widget/video_list_widget.dart';
import 'package:video_gozle/features/video/presentation/video/logic/suggested_video_list_bloc/suggested_video_list_bloc.dart';

class SuggestedVideoListWidget extends StatelessWidget {
  const SuggestedVideoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestedVideoListBloc, SuggestedVideoListState>(
      builder: (context, suggestedVideoListState) {
        return suggestedVideoListState.when(
          suggestedLoaded: (videos, hasReachedMax) {
            return VideoListWidget(
              videos: videos,
            );
          },
          suggestedLoading: (oldItems) {
            if (oldItems.isNotEmpty) {
              return VideoListWidget(
                videos: oldItems,
              );
            } else {
              return const VideoListWidget(
                videos: [],
                videoListType: VideoListType.PLACEHOLDER,
              );
            }
          },
          byCategoryLoaded: (videos, category, hasReachedMax) {
            return VideoListWidget(videos: videos);
          },
          categoryLoading: (oldItems, category) {
            if (oldItems.isNotEmpty) {
              return VideoListWidget(
                videos: oldItems,
              );
            } else {
              return const VideoListWidget(
                videos: [],
                videoListType: VideoListType.PLACEHOLDER,
              );
            }
          },
          error: (oldItems, failure, event) {
            if (oldItems.isNotEmpty) {
              return VideoListWidget(
                videos: oldItems,
              );
            } else {
              return SliverCustomErrorWidget(
                failure: failure,
                onTap: () {
                  context.read<SuggestedVideoListBloc>().add(event);
                },
              );
            }
          },
        );
      },
    );
  }
}
