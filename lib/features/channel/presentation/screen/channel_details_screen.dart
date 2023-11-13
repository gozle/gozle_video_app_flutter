import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_details_cubit/channel_details_cubit.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_details_popular_video_list_bloc/channel_details_popular_videos_list_bloc.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_details_video_list_bloc/channel_details_video_list_bloc.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_subscription_cubit/channel_subscription_cubit.dart';
import 'package:video_gozle/features/channel/presentation/widget/details_tab.dart';
import 'package:video_gozle/features/channel/presentation/widget/main_tab.dart';
import 'package:video_gozle/features/channel/presentation/widget/videos_tab.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/custom_error_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/place_holder.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/subscribe_button.dart';
import 'package:video_gozle/generated/l10n.dart';

class ChannelDetailsScreen extends StatefulWidget {
  final String channelId;
  final String? channelName;

  static var routeName = 'channel';

  const ChannelDetailsScreen({
    super.key,
    required this.channelId,
    this.channelName,
  });

  @override
  State<ChannelDetailsScreen> createState() => _ChannelDetailsScreenState();
}

class _ChannelDetailsScreenState extends State<ChannelDetailsScreen> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChannelDetailsCubit(channelId: widget.channelId),
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).iconTheme.color,
          ),
          title: Text(widget.channelName ?? ''),
        ),
        body: BlocBuilder<ChannelDetailsCubit, ChannelDetailsState>(
          builder: (context, state) {
            return state.when(
              loading: (channelName) {
                return const Center(child: CircularProgressIndicator.adaptive());
              },
              error: (failure) {
                return CustomErrorWidget(
                  failure: failure,
                  onTap: () {
                    context.read<ChannelDetailsCubit>().load();
                  },
                );
              },
              loaded: (channel) {
                return NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar.large(
                        automaticallyImplyLeading: false,
                        toolbarHeight: 50,
                        collapsedHeight: 50,
                        expandedHeight: 310,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: AspectRatio(
                                    aspectRatio: 5 / 1,
                                    child: CachedNetworkImage(
                                      imageUrl: '${channel.channelBanner}',
                                      fit: BoxFit.cover,
                                      errorWidget: (context, url, error) => const CustomPlaceholder(),
                                      placeholder: (context, url) => const CustomPlaceholder(),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              CircleAvatar(
                                radius: 23,
                                backgroundColor: Theme.of(context).secondaryHeaderColor,
                                backgroundImage: Image.network('${channel.channelAvatar}').image,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                channel.name ?? '',
                                textAlign: TextAlign.center,
                                style: context.textTheme.titleLarge,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '${AppUtils.formatViews(channel.view)} • ${channel.videoCount} видео',
                                textAlign: TextAlign.center,
                                style: context.textTheme.titleSmall,
                              ),
                              const SizedBox(height: 10),
                              BlocProvider(
                                  create: (context) => ChannelSubscriptionCubit(
                                      channelId: channel.pk, isSubscribed: channel.isSubscribed ?? false),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width / 2,
                                        child: const SubscribeButton(),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                          collapseMode: CollapseMode.pin,
                        ),
                        bottom: TabBar(
                          controller: _tabController,
                          isScrollable: true,
                          labelColor: Theme.of(context).colorScheme.primary,
                          unselectedLabelColor: Theme.of(context).disabledColor,
                          dividerColor: Theme.of(context).dividerColor,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(text: S.current.main_page),
                            Tab(text: S.current.videos),
                            // Tab(text: 'Плейлисты'),
                            Tab(text: S.current.about_channel),
                          ],
                        ),
                      ),
                    ];
                  },
                  body: MultiBlocProvider(
                    providers: [
                      BlocProvider(
                          create: (context) => ChannelDetailsPopularVideosListBloc(channelId: channel.pk)),
                      BlocProvider(create: (context) => ChannelDetailsVideoListBloc(channelId: channel.pk)),
                    ],
                    child: TabBarView(
                      // physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: const [
                        MainTab(),
                        VideosTab(),
                        // PlaylistTab(),
                        DetailsTab(),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
