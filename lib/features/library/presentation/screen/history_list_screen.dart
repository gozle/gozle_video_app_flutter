import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:video_gozle/features/global/domain/models/video_list_item_type.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/sliver_error_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_footer.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_header.dart';

import 'package:video_gozle/features/home/presentation/widget/video_list_widget.dart';
import 'package:video_gozle/features/library/presentation/logic/history_list_bloc/history_list_bloc.dart';

class HistoryListScreen extends StatefulWidget {
  static String routeName = 'history-list';

  const HistoryListScreen({super.key});

  @override
  State<HistoryListScreen> createState() => _HistoryListScreenState();
}

class _HistoryListScreenState extends State<HistoryListScreen> {
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
    context.read<HistoryListBloc>().add(const HistoryListEvent.load());
  }

  // void _onLoadMore() {
  //   context.read<HistoryListBloc>().state.whenOrNull(
  //     loaded: (videos, hasReachedMax) {
  //       if (!hasReachedMax) {
  //         context.read<HistoryListBloc>().add(HistoryListEvent.loadMore(oldVideos: videos));
  //       }
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HistoryListBloc, HistoryListState>(
      listener: (context, state) {
        state.whenOrNull(
          loaded: (videos, hasReachedMax) {
            refreshController.refreshCompleted();
            refreshController.loadComplete();
          },
          error: (oldVideos, lastEvent, falure) {
            refreshController.refreshFailed();
            refreshController.loadFailed();
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: BackButton(
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          body: SafeArea(
              child: SmartRefresher(
            controller: refreshController,
            scrollController: scrollController,
            header: const SmartRefresherHeader(),
            footer: const SmartRefresherFooter(),
            onRefresh: _onRefresh,
            // onLoading: _onLoadMore,
            // enablePullUp: true,
            enablePullDown: true,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                state.when(
                  loaded: (videos, hasReachedMax) {
                    return VideoListWidget(
                      videos: videos,
                    );
                  },
                  loading: (oldItems) {
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
                  error: (oldVideos, lastEvent, failure) {
                    if (oldVideos.isNotEmpty) {
                      return VideoListWidget(
                        videos: oldVideos,
                      );
                    } else {
                      return SliverCustomErrorWidget(
                        failure: failure,
                        onTap: () {
                          context.read<HistoryListBloc>().add(lastEvent);
                        },
                      );
                    }
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
