import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_list_item_type.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/sliver_error_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_footer.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_header.dart';
import 'package:video_gozle/features/home/presentation/logic/banner_cubit/banner_cubit.dart';
import 'package:video_gozle/features/home/presentation/logic/video_category_cubit/video_category_cubit.dart';
import 'package:video_gozle/features/home/presentation/logic/video_list_bloc/video_list_bloc.dart';
import 'package:video_gozle/features/home/presentation/widget/banner_widget.dart';
import 'package:video_gozle/features/home/presentation/widget/video_list_widget.dart';
import 'package:video_gozle/features/nav/presentation/widget/main_app_bar.dart';
import 'package:video_gozle/features/settings/presentation/logic/settings/settings_provider.dart';
import 'package:video_gozle/generated/l10n.dart';
import '../../../global/presentation/widget/video_item_widget/vertical_video_list_item_widget.dart';
import '../widget/category_list_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController scrollController;
  late RefreshController refreshController;
  int? cycleDuration;
  Object? pollToken;
  @override
  void initState() {
    scrollController = ScrollController();

    LongPolling();

    refreshController = RefreshController(initialRefresh: false);

    super.initState();
  }

  @override
  void dispose() {
    pollToken = null;
    scrollController.dispose();
    refreshController.dispose();
    super.dispose();
  }

  Future<void> LongPolling() async {
    final pollToken = Object();
    this.pollToken = pollToken;
    while (mounted && true) {
      if (pollToken != this.pollToken) {
        //canceled
        return;
      }

      await Future<void>.delayed(Duration(seconds: cycleDuration ?? 150));

      if (pollToken != this.pollToken) {
        //canceled
        return;
      }

      if (pollToken != this.pollToken) {
        //canceled
        return;
      }
      _onRefreshBanner();
    }
  }
  void _onRefreshBanner() {
    context.read<BannerCubit>().load();
    context.read<BannerCubit>().state.whenOrNull(
      loaded: (banners) {
        var banner = banners;
        return BannerWidget(banner: banner);
      },
    );
    setState(() {
      //no-op
    });
  }
  void _onRefresh() {
    context.read<VideoCategoryCubit>().load();

    context.read<VideoListBloc>().state.whenOrNull(
      byCategoryLoaded: (_, category, __) {
        context.read<VideoListBloc>().add(
              VideoListEvent.byCategoryload(category: category),
            );
      },
      popularLoaded: (videos, _) {
        context.read<VideoListBloc>().add(
              const VideoListEvent.popularLoad(),
            );
      },
    );
  }

  void _onLoadMore() {
    context.read<VideoListBloc>().state.whenOrNull(
        byCategoryLoaded: (videos, category, hasReachedMax) {
      if (!hasReachedMax) {
        context.read<VideoListBloc>().add(
              VideoListEvent.byCategoryloadMore(
                category: category,
                oldVideos: videos,
              ),
            );
      }
    }, popularLoaded: (videos, hasReachedMax) {
      if (!hasReachedMax) {
        context.read<VideoListBloc>().add(
              VideoListEvent.popularLoadMore(
                oldVideos: videos,
              ),
            );
      }
    }, latestLoaded: (videos, hasReachedMax) {
      if (!hasReachedMax) {
        context.read<VideoListBloc>().add(VideoListEvent.latestLoadMore(latestVideos: videos));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VideoListBloc, VideoListState>(
      listener: (context, state) {
        state.whenOrNull(
          byCategoryLoaded: (videos, category, hasReachedMax) {
            refreshController.refreshCompleted();
            refreshController.loadComplete();
          },
          popularLoaded: (videos, hasReachedMax) {
            refreshController.refreshCompleted();
            refreshController.loadComplete();
          },
          latestLoaded: ((latestVideos, hasReachedMax) {
            refreshController.refreshCompleted();
            refreshController.loadComplete();
          }),
          error: (oldVideos, message, lastEvent) {
            refreshController.loadFailed();
          },
        );
      },
      builder: (context, state) {
        return Consumer<SettingsProvider>(
          builder: (_, __, ___) {
            return Scaffold(
              appBar: MainAppBar(
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(40),
                  child: BlocBuilder<VideoCategoryCubit, VideoCategoryState>(
                    builder: (context, videoCategoryState) {
                      final popularVideoCategory = VideoCategory(
                          pk: 0,
                          name: 'popular',
                          verbose: S.current.popular,
                          iconAsset: AppAssets.rocketIcon);
                      final latestVideoCategory = VideoCategory(
                          pk: -1,
                          name: 'latest',
                          verbose: S.current.latest,
                          iconAsset: AppAssets.clockRewindIcon);
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CategoryListWidget(
                          selectedCategory: state.whenOrNull(
                            categoryLoading: (_, category) => category,
                            byCategoryLoaded: (_, category, __) => category,
                            popularLoading: (_) => popularVideoCategory,
                            popularLoaded: (_, __) => popularVideoCategory,
                            latestLoading: (_) => latestVideoCategory,
                            latestLoaded: (_, __) => latestVideoCategory,
                          ),
                          categories: videoCategoryState.maybeWhen(
                            loaded: (categories) {
                              final List<VideoCategory> categotyList = List.from(categories);

                              categotyList.insert(0, latestVideoCategory);
                              categotyList.insert(0, popularVideoCategory);

                              return categotyList;
                            },
                            orElse: () => [],
                          ),
                          onCategorySelected: (category) {
                            if (category == popularVideoCategory) {
                              context.read<VideoListBloc>().add(const VideoListEvent.popularLoad());
                            } else if (category == latestVideoCategory) {
                              context.read<VideoListBloc>().add(const VideoListEvent.latestLoad());
                            } else {
                              context.read<VideoListBloc>().add(
                                    VideoListEvent.byCategoryload(category: category),
                                  );
                              scrollController.animateTo(1,
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.linear);
                            }
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              body: SafeArea(
                child: SmartRefresher(
                  controller: refreshController,
                  scrollController: scrollController,
                  header: const SmartRefresherHeader(),
                  onRefresh: _onRefresh,
                  onLoading: _onLoadMore,
                  enablePullUp: true,
                  enablePullDown: true,
                  footer: const SmartRefresherFooter(),
                  child: state.when(
                    popularLoaded: (videos, hasReachedMax) {
                      return CustomScrollView(
                        controller: scrollController,
                        slivers: [
                          BlocBuilder<BannerCubit, BannerState>(
                            builder: (_, banner_state) {
                              return SliverToBoxAdapter(
                                child: banner_state.whenOrNull(
                                  loading: () {
                                    return BannerWidget.placeHolder(context);
                                  },
                                  loaded: (banners) {
                                    var banner = banners;
                                    cycleDuration = banners?.cycleDuration;
                                    return BannerWidget(banner: banner);
                                  },
                                ),
                              );
                            },
                            bloc: BannerCubit(),
                          ),
                          VideoListWidget(
                            videos: videos,
                          ),
                        ],
                      );
                    },
                    popularLoading: (oldItems) {
                      if (oldItems.isNotEmpty) {
                        return CustomScrollView(
                          controller: scrollController,
                          slivers: [
                            VideoListWidget(
                              videos: oldItems,
                            ),
                          ],
                        );
                      } else {
                        return CustomScrollView(
                          controller: scrollController,
                          slivers: const [
                            VideoListWidget(
                              videos: [],
                              videoListType: VideoListType.PLACEHOLDER,
                            ),
                          ],
                        );
                      }
                    },
                    latestLoading: (videos) {
                      if (videos.isNotEmpty) {
                        return CustomScrollView(
                          controller: scrollController,
                          slivers: [
                            VideoListWidget(
                              videos: videos,
                            ),
                          ],
                        );
                      }
                      return CustomScrollView(
                        controller: scrollController,
                        slivers: const [
                          VideoListWidget(
                            videos: [],
                            videoListType: VideoListType.PLACEHOLDER,
                          ),
                        ],
                      );
                    },
                    latestLoaded: (videos, _) {
                      return CustomScrollView(
                        controller: scrollController,
                        slivers: [
                          BlocBuilder<BannerCubit, BannerState>(
                            builder: (_, banner_state) {
                              return SliverToBoxAdapter(
                                child: banner_state.whenOrNull(
                                  loading: () {
                                    return BannerWidget.placeHolder(context);
                                  },
                                  loaded: (banners) {
                                    var banner = banners;
                                    return BannerWidget(banner: banner);
                                  },
                                ),
                              );
                            },
                            bloc: BannerCubit(),
                          ),
                          VideoListWidget(
                            videos: videos,
                          ),
                        ],
                      );
                    },
                    byCategoryLoaded: (videos, category, hasReachedMax) {
                      return CustomScrollView(
                        controller: scrollController,
                        slivers: [
                          BlocBuilder<BannerCubit, BannerState>(
                            builder: (_, banner_state) {
                              return SliverToBoxAdapter(
                                child: banner_state.whenOrNull(
                                  loading: () {
                                    return VerticalVideoItemWidget.placeHolder(context);
                                  },
                                  loaded: (banners) {
                                    var banner = banners;
                                    return BannerWidget(banner: banner);
                                  },
                                ),
                              );
                            },
                            bloc: BannerCubit(),
                          ),
                          VideoListWidget(videos: videos),
                        ],
                      );
                    },
                    categoryLoading: (oldItems, category) {
                      if (oldItems.isNotEmpty) {
                        return CustomScrollView(
                          controller: scrollController,
                          slivers: [
                            VideoListWidget(
                              videos: oldItems,
                            ),
                          ],
                        );
                      } else {
                        return CustomScrollView(
                          controller: scrollController,
                          slivers: const [
                            VideoListWidget(
                              videos: [],
                              videoListType: VideoListType.PLACEHOLDER,
                            ),
                          ],
                        );
                      }
                    },
                    error: (oldItems, failure, event) {
                      return CustomScrollView(
                        controller: scrollController,
                        slivers: [
                          SliverCustomErrorWidget(
                            failure: failure,
                            onTap: () {
                              context.read<VideoListBloc>().add(event);
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
