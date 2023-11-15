import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_list_item_type.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/sliver_error_widget.dart';

import 'package:video_gozle/features/global/presentation/widget/smart_refresher_footer.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_header.dart';
import 'package:video_gozle/features/home/presentation/logic/video_category_cubit/video_category_cubit.dart';
import 'package:video_gozle/features/home/presentation/logic/video_list_bloc/video_list_bloc.dart';
import 'package:video_gozle/features/home/presentation/widget/video_list_widget.dart';
import 'package:video_gozle/features/nav/presentation/widget/main_app_bar.dart';
import 'package:video_gozle/generated/l10n.dart';

import '../widget/category_list_widget.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        context
            .read<VideoListBloc>()
            .add(VideoListEvent.latestLoadMore(latestVideos: videos));
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
        return Scaffold(
          appBar: MainAppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: BlocBuilder<VideoCategoryCubit, VideoCategoryState>(
                builder: (context, videoCategoryState) {
                  final popularVideoCategory = VideoCategory(
                      pk: 0, name: 'popular', verbose: S.current.popular);
                  final latestVideoCategory = VideoCategory(
                      pk: -1, name: 'latest', verbose: S.current.latest);
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
                          final List<VideoCategory> categotyList =
                              List.from(categories);

                          categotyList.insert(0, latestVideoCategory);
                          categotyList.insert(0, popularVideoCategory);

                          return categotyList;
                        },
                        orElse: () => [],
                      ),
                      onCategorySelected: (category) {
                        if (category == popularVideoCategory) {
                          context
                              .read<VideoListBloc>()
                              .add(const VideoListEvent.popularLoad());
                        } else if (category == latestVideoCategory) {
                          context
                              .read<VideoListBloc>()
                              .add(const VideoListEvent.latestLoad());
                        } else {
                          context.read<VideoListBloc>().add(
                                VideoListEvent.byCategoryload(
                                    category: category),
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
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                state.when(
                  popularLoaded: (videos, hasReachedMax) {
                    return VideoListWidget(
                      videos: videos,
                    );
                  },
                  popularLoading: (oldItems) {
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
                  latestLoading: (videos) {
                    if (videos.isNotEmpty) {
                      return VideoListWidget(
                        videos: videos,
                      );
                    }
                    return const VideoListWidget(
                        videos: [], videoListType: VideoListType.PLACEHOLDER);
                  },
                  latestLoaded: (videos, _) {
                    return VideoListWidget(
                      videos: videos,
                    );
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
                    return SliverCustomErrorWidget(
                      failure: failure,
                      onTap: () {
                        context.read<VideoListBloc>().add(event);
                      },
                    );
                  },
                ),
              ],
            ),
          )),
        );
      },
    );
  }
}
