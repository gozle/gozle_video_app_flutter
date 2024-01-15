import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/global/domain/models/video_list_item_type.dart';
import 'package:video_gozle/features/global/presentation/widget/channel_item_widget/channel_list_item_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/sliver_error_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_footer.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_header.dart';
import 'package:video_gozle/features/home/presentation/widget/video_list_widget.dart';
import 'package:video_gozle/features/nav/presentation/widget/main_app_bar.dart';
import 'package:video_gozle/features/subscriptions/presentation/logic/bloc/popular_channel_list_bloc.dart';
import 'package:video_gozle/features/subscriptions/presentation/logic/subscribed_channel_list_bloc/subscribed_channel_list_bloc.dart';
import 'package:video_gozle/features/subscriptions/presentation/logic/subscribed_channel_video_list/subscribed_channel_video_list_bloc.dart';
import 'package:video_gozle/features/subscriptions/presentation/widget/channel_list_item_widget.dart';
import 'package:video_gozle/features/subscriptions/presentation/screen/subscriptions_channels_screen.dart';
import 'package:video_gozle/generated/l10n.dart';

class SubscriptionsScreen extends StatefulWidget {
  static const String routeName = '/subscriptions';
  const SubscriptionsScreen({super.key});

  @override
  State<SubscriptionsScreen> createState() => SsubscriptionsScreenState();
}

class SsubscriptionsScreenState extends State<SubscriptionsScreen> {
  late ScrollController scrollController;
  late RefreshController refreshController;

  @override
  void initState() {
    scrollController = ScrollController();

    refreshController = RefreshController(initialRefresh: false);

    Future.delayed(Duration.zero).then((value) {
      context.read<SubscribedChannelListBloc>().add(const SubscribedChannelListEvent.load());
    });

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    refreshController.dispose();
    super.dispose();
  }

  void _onRefresh() {
    context.read<SubscribedChannelListBloc>().add(const SubscribedChannelListEvent.load());

    context.read<SubscribedChannelVideoListBloc>().state.whenOrNull(
      loaded: (_, __, channelId) {
        context
            .read<SubscribedChannelVideoListBloc>()
            .add(SubscribedChannelVideoListEvent.load(channelId: channelId));
      },
    );
  }

  void _onLoadMore() {
    context.read<SubscribedChannelVideoListBloc>().state.whenOrNull(
      loaded: (videos, hasReachedMax, channelId) {
        if (!hasReachedMax) {
          context.read<SubscribedChannelVideoListBloc>().add(
                SubscribedChannelVideoListEvent.loadMore(channelId: channelId, oldVideos: videos),
              );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MainAppBar(),
        body: BlocConsumer<SubscribedChannelListBloc, SubscribedChannelListState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (channels, hasReachedMax) {
                if (channels.isNotEmpty) {
                  context
                      .read<SubscribedChannelVideoListBloc>()
                      .add(SubscribedChannelVideoListEvent.load(channelId: channels.first.pk));
                }
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (channels, hasReachedMax) {
                if (channels.isNotEmpty) {
                  return SmartRefresher(
                    controller: refreshController,
                    scrollController: scrollController,
                    onRefresh: _onRefresh,
                    onLoading: _onLoadMore,
                    enablePullUp: true,
                    enablePullDown: true,
                    header: const SmartRefresherHeader(),
                    footer: const SmartRefresherFooter(),
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: 130,
                            child: Stack(
                              children: [
                                ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: channels.length,
                                  padding: const EdgeInsets.only(left: 18, right: 60, top: 15, bottom: 5),
                                  itemBuilder: (context, index) {
                                    return ChannelListItemVerticalWidget(
                                      isSelected:
                                          context.read<SubscribedChannelVideoListBloc>().state.whenOrNull(
                                                    loaded: (videos, hasReachedMax, channelId) =>
                                                        channelId == channels[index].pk,
                                                    loading: (oldVideos, channelId) =>
                                                        channelId == channels[index].pk,
                                                  ) ??
                                              false,
                                      channel: channels[index],
                                      onTap: () {
                                        context.read<SubscribedChannelVideoListBloc>().add(
                                            SubscribedChannelVideoListEvent.load(
                                                channelId: channels[index].pk));
                                        setState(() {});
                                      },
                                    );
                                  },
                                ),
                                Positioned(
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed(SubscribedChannelListScreen.routeName);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.only(left: 25, right: 10),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Theme.of(context).scaffoldBackgroundColor,
                                              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.0),
                                            ],
                                            stops: const [0.8, 1],
                                            begin: Alignment.centerRight,
                                            end: Alignment.centerLeft,
                                          ),
                                        ),
                                        child: Text(
                                          S.current.more,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        BlocBuilder<SubscribedChannelVideoListBloc, SubscribedChannelVideoListState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () {
                                return const VideoListWidget(
                                  videos: [],
                                  videoListType: VideoListType.PLACEHOLDER,
                                );
                              },
                              loading: (oldVideos, channelId) {
                                if (oldVideos.isNotEmpty) {
                                  return VideoListWidget(videos: oldVideos);
                                } else {
                                  return const VideoListWidget(
                                    videos: [],
                                    videoListType: VideoListType.PLACEHOLDER,
                                  );
                                }
                              },
                              loaded: (videos, hasReachedMax, channelId) {
                                return VideoListWidget(videos: videos);
                              },
                              error: (failure, oldChannels, lastEvent) {
                                return SliverCustomErrorWidget(
                                  failure: failure,
                                  onTap: () {
                                    context.read<SubscribedChannelVideoListBloc>().add(lastEvent);
                                  },
                                );
                              },
                            );
                          },
                        )
                      ],
                    ),
                  );
                } else {
                  return const NoSubscriptionsWidget();
                }
              },
              orElse: () {
                return CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 18, right: 60, top: 15, bottom: 5),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ChannelListItemVerticalWidget.placeHolder(context);
                          },
                        ),
                      ),
                    ),
                    const VideoListWidget(
                      videos: [],
                      videoListType: VideoListType.PLACEHOLDER,
                    )
                  ],
                );
              },
            );
          },
        ));
  }
}

class NoSubscriptionsWidget extends StatelessWidget {
  const NoSubscriptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PopularChannelListBloc(),
        child: BlocBuilder<PopularChannelListBloc, PopularChannelListState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(24),
                  sliver: SliverToBoxAdapter(
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            S.current.channels_you_may_like,
                            style: context.textTheme.titleLarge,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            S.current.subscribe_and_watch_new_interesting_videos,
                            style: context.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  // hasScrollBody: true,
                  child: state.when(
                    loading: (oldChannels) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loaded: (channels, hasReachedMax) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: channels.length,
                        itemBuilder: (context, index) {
                          final channel = channels[index];
                          return ChannelListItemWidget(channel: channel);
                        },
                      );
                    },
                    error: (falure, oldChannels, lastEvent) {
                      return CustomScrollView(
                        slivers: [
                          SliverCustomErrorWidget(
                            failure: falure,
                            onTap: () {
                              context.read<PopularChannelListBloc>().add(lastEvent);
                            },
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ));
  }
}
