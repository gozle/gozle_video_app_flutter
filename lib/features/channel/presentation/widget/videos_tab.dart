import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_details_video_list_bloc/channel_details_video_list_bloc.dart';
import 'package:video_gozle/features/global/domain/models/video_list_item_type.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/sliver_error_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_footer.dart';

import 'package:video_gozle/features/home/presentation/widget/category_item_widget.dart';
import 'package:video_gozle/features/home/presentation/widget/video_list_widget.dart';
import 'package:video_gozle/generated/l10n.dart';

class VideosTab extends StatefulWidget {
  const VideosTab({super.key});

  @override
  State<VideosTab> createState() => _VideosTabState();
}

class _VideosTabState extends State<VideosTab> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollMetricsNotification>(
      onNotification: (ScrollMetricsNotification notification) {
        if (notification.metrics.extentAfter < 700) {
          final bloc = context.read<ChannelDetailsVideoListBloc>();

          bloc.state.whenOrNull(
            latestLoaded: (videos, hasReachedMax) {
              if (!hasReachedMax) {
                bloc.add(ChannelDetailsVideoListEvent.loadMoreLatest(oldVideos: videos));
              }
            },
            oldestLoaded: (videos, hasReachedMax) {
              if (!hasReachedMax) {
                bloc.add(ChannelDetailsVideoListEvent.loadMoreOldest(oldVideos: videos));
              }
            },
            popularLoaded: (videos, hasReachedMax) {
              if (!hasReachedMax) {
                bloc.add(ChannelDetailsVideoListEvent.loadMorePopular(oldVideos: videos));
              }
            },
          );
        }
        return false;
      },
      child: BlocBuilder<ChannelDetailsVideoListBloc, ChannelDetailsVideoListState>(
        builder: (context, state) {
          final bloc = context.read<ChannelDetailsVideoListBloc>();

          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                sliver: SliverToBoxAdapter(
                  child: SizedBox(
                    height: 30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 18),
                        CategoryItemWidget(
                          onTap: () {
                            bloc.add(const ChannelDetailsVideoListEvent.loadLatest());
                          },
                          isSelected: bloc.state.whenOrNull(
                                latestLoaded: (_, __) => true,
                                latestLoading: (_) => true,
                              ) ??
                              false,
                          name: S.current.all,
                        ),
                        const SizedBox(width: 15),
                        CategoryItemWidget(
                          onTap: () {
                            bloc.add(const ChannelDetailsVideoListEvent.loadOldest());
                          },
                          isSelected: bloc.state.whenOrNull(
                                oldestLoaded: (_, __) => true,
                                oldestLoading: (_) => true,
                              ) ??
                              false,
                          name: S.current.old,
                        ),
                        const SizedBox(width: 15),
                        CategoryItemWidget(
                          onTap: () {
                            bloc.add(const ChannelDetailsVideoListEvent.loadPopular());
                          },
                          isSelected: bloc.state.whenOrNull(
                                popularLoaded: (_, __) => true,
                                popularLoading: (_) => true,
                              ) ??
                              false,
                          name: S.current.popular,
                        ),
                        const SizedBox(width: 18),
                      ],
                    ),
                  ),
                ),
              ),
              BlocBuilder<ChannelDetailsVideoListBloc, ChannelDetailsVideoListState>(
                builder: (context, state) {
                  return state.when(
                    latestLoaded: (videos, hasReachedMax) {
                      return VideoListWidget(
                        videos: videos,
                      );
                    },
                    latestLoading: (oldVideos) {
                      if (oldVideos.isEmpty) {
                        return const VideoListWidget(
                          videos: [],
                          videoListType: VideoListType.PLACEHOLDER,
                        );
                      } else {
                        return VideoListWidget(
                          videos: oldVideos,
                        );
                      }
                    },
                    oldestLoaded: (videos, hasReachedMax) {
                      return VideoListWidget(
                        videos: videos,
                      );
                    },
                    oldestLoading: (oldVideos) {
                      if (oldVideos.isEmpty) {
                        return const VideoListWidget(
                          videos: [],
                          videoListType: VideoListType.PLACEHOLDER,
                        );
                      } else {
                        return VideoListWidget(
                          videos: oldVideos,
                        );
                      }
                    },
                    popularLoaded: (videos, hasReachedMax) {
                      return VideoListWidget(
                        videos: videos,
                      );
                    },
                    popularLoading: (oldVideos) {
                      if (oldVideos.isEmpty) {
                        return const VideoListWidget(
                          videos: [],
                          videoListType: VideoListType.PLACEHOLDER,
                        );
                      } else {
                        return VideoListWidget(
                          videos: oldVideos,
                        );
                      }
                    },
                    error: (failure, oldVideos, lastEvent) {
                      if (oldVideos.isNotEmpty) {
                        return VideoListWidget(
                          videos: oldVideos,
                        );
                      } else {
                        return SliverCustomErrorWidget(
                          failure: failure,
                          onTap: () {
                            context.read<ChannelDetailsVideoListBloc>().add(lastEvent);
                          },
                        );
                      }
                    },
                  );
                },
              ),
              BlocBuilder<ChannelDetailsVideoListBloc, ChannelDetailsVideoListState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    latestLoading: (oldVideos) {
                      return const SliverToBoxAdapter(
                        child: SmartRefresherFooter(),
                      );
                    },
                    popularLoading: (oldVideos) {
                      return const SliverToBoxAdapter(
                        child: SmartRefresherFooter(),
                      );
                    },
                    oldestLoading: (oldVideos) {
                      return const SliverToBoxAdapter(
                        child: SmartRefresherFooter(),
                      );
                    },
                    orElse: () {
                      return const SliverToBoxAdapter();
                    },
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
