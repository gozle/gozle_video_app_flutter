import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_details_popular_video_list_bloc/channel_details_popular_videos_list_bloc.dart';
import 'package:video_gozle/features/global/domain/models/video_list_item_type.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/sliver_error_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_footer.dart';
import 'package:video_gozle/features/home/presentation/widget/video_list_widget.dart';

class MainTab extends StatelessWidget {
  const MainTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollMetricsNotification>(
      onNotification: (ScrollMetricsNotification notification) {
        if (notification.metrics.extentAfter < 700) {
          final bloc = context.read<ChannelDetailsPopularVideosListBloc>();

          bloc.state.whenOrNull(
            loaded: (items, hasReachedMax) {
              if (!hasReachedMax) {
                bloc.add(ChannelDetailsPopularVideosListEvent.loadMore(oldItems: items));
              }
            },
          );
        }
        return false;
      },
      child: BlocBuilder<ChannelDetailsPopularVideosListBloc, ChannelDetailsPopularVideosListState>(
        builder: (context, state) {
          return state.when(
            loading: (oldVideos) {
              return CustomScrollView(
                slivers: [
                  if (oldVideos.isNotEmpty)
                    VideoListWidget(videos: oldVideos)
                  else
                    const VideoListWidget(
                      videos: [],
                      videoListType: VideoListType.VERTICAL_PLACEHOLDER,
                    ),
                  if (oldVideos.isNotEmpty)
                    const SliverToBoxAdapter(
                      child: SmartRefresherFooter(),
                    )
                ],
              );
            },
            loaded: (videos, hasReachedMax) {
              return CustomScrollView(
                slivers: [
                  VideoListWidget(videos: videos),
                ],
              );
            },
            error: (failure, oldVideos, lastEvent) {
              return CustomScrollView(
                slivers: [
                  SliverCustomErrorWidget(
                    failure: failure,
                    onTap: () {
                      context
                          .read<ChannelDetailsPopularVideosListBloc>()
                          .add(const ChannelDetailsPopularVideosListEvent.load());
                    },
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
