import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_footer.dart';
import 'package:video_gozle/features/video/presentation/video/logic/suggested_video_list_bloc/suggested_video_list_bloc.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/suggested_video_category_widget.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/suggested_video_list_widget.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/video_details_channel_widget.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/video_details_feed_back_widget.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/video_details_title_widget.dart';

class LoadedVideoDetailsWidget extends StatefulWidget {
  final Video video;
  final double videoDetailsBottomSheetHeight;
  const LoadedVideoDetailsWidget({
    super.key,
    required this.video,
    required this.videoDetailsBottomSheetHeight,
  });

  @override
  State<LoadedVideoDetailsWidget> createState() => _LoadedVideoDetailsWidgetState();
}

class _LoadedVideoDetailsWidgetState extends State<LoadedVideoDetailsWidget> {
  late ScrollController scrollController;
  late RefreshController refreshController;

  @override
  void initState() {
    scrollController = ScrollController();

    refreshController = RefreshController(initialRefresh: false);

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    refreshController.dispose();
    super.dispose();
  }

  void _onLoadMore() {
    context.read<SuggestedVideoListBloc>().state.whenOrNull(
      byCategoryLoaded: (videos, category, hasReachedMax) {
        if (!hasReachedMax) {
          context.read<SuggestedVideoListBloc>().add(
                SuggestedVideoListEvent.byCategoryloadMore(
                  category: category,
                  oldVideos: videos,
                ),
              );
        }
      },
      suggestedLoaded: (videos, hasReachedMax) {
        if (!hasReachedMax) {
          context.read<SuggestedVideoListBloc>().add(
                SuggestedVideoListEvent.suggestedLoadMore(
                  oldVideos: videos,
                ),
              );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: refreshController,
      scrollController: scrollController,
      onLoading: _onLoadMore,
      enablePullUp: true,
      enablePullDown: false,
      footer: const SmartRefresherFooter(),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:
                VideoDetailsTitleWidget(videoDetailsBottomSheetHeight: widget.videoDetailsBottomSheetHeight),
          ),
          SliverToBoxAdapter(
            child: VideoDetailsChannelWidget(video: widget.video),
          ),
          SliverToBoxAdapter(
            child: VideoDetailsFeedBackWidget(video: widget.video),
          ),
          SliverAppBar(
            titleSpacing: 0,
            toolbarHeight: 40,
            pinned: true,
            title: SuggestedVideoCategoryWidget(
              categories: widget.video.category,
            ),
          ),
          const SuggestedVideoListWidget(),
        ],
      ),
    );
  }
}
