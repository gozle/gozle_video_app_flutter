import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/global/domain/models/video_list_item_type.dart';
import 'package:video_gozle/features/global/presentation/widget/channel_item_widget/channel_list_item_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/sliver_error_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_footer.dart';
import 'package:video_gozle/features/home/presentation/widget/video_list_widget.dart';
import 'package:video_gozle/features/search/presentation/logic/seach_video_bloc/search_video_bloc.dart';
import 'package:video_gozle/features/search/presentation/logic/search_history_cubit/search_history_cubit.dart';
import 'package:video_gozle/features/search/presentation/widget/search_text_field.dart';
import 'package:video_gozle/generated/l10n.dart';

import '../../../home/presentation/widget/category_item_widget.dart';

enum SearchFilter {
  all,
  divider,
  video,
  channels;

  String get asValue {
    switch (this) {
      case SearchFilter.all:
        return S.current.all;
      case SearchFilter.divider:
        return '';
      case SearchFilter.video:
        return S.current.video;
      case SearchFilter.channels:
        return S.current.channels;
    }
  }
}

class SearchScreen extends StatefulWidget {
  static const String routeName = 'search';

  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late ScrollController scrollController;
  late RefreshController refreshController;
  late TextEditingController queryTC;
  late FocusNode focusNode;
  int selectedFilter = 0;
  bool tappedShowMore = false;

  @override
  void initState() {
    scrollController = ScrollController();
    queryTC = TextEditingController();
    focusNode = FocusNode();
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    refreshController = RefreshController(initialRefresh: false);

    Future.delayed(Duration.zero).then((value) {
      context.read<SearchHistoryCubit>().restore();

      animationController.forward();
    });

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    refreshController.dispose();

    queryTC.dispose();
    focusNode.dispose();
    animationController.dispose();

    super.dispose();
  }

  void _onLoadMore() {
    context.read<SearchVideoBloc>().state.whenOrNull(
      loaded: (videos, c, hasReachedMax, query) {
        context.read<SearchVideoBloc>().add(SearchVideoEvent.loadMore(query, videos, c));
      },
    );
  }

  void updateUi() {
    setState(() {
      //no-op
    });
  }

  void onFilterButtonTap(int i) {
    selectedFilter = i;

    updateUi();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return context.read<SearchVideoBloc>().state.maybeWhen(
          loaded: (videos, channels, hasReachedMax, query) {
            if (videos.isNotEmpty) {
              if (animationController.value == 1) {
                animationController.reverse();
                return false;
              } else {
                return true;
              }
            } else {
              return true;
            }
          },
          orElse: () {
            return true;
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).iconTheme.color,
          ),
          titleSpacing: 0,
          title: Padding(
            padding: const EdgeInsets.only(right: 18),
            child: SearchTextField(
              autofocus: true,
              hintText: S.current.search_videos,
              onChanged: (value) {
                animationController.forward();
                context.read<SearchHistoryCubit>().filter(filter: value ?? '');
              },
              onFocused: () {
                animationController.forward();
              },
              onSuffixIconPressed: () {
                animationController.forward();
                if (focusNode.hasFocus) {
                  if (queryTC.text.isEmpty) {
                    focusNode.unfocus();
                  } else {
                    setState(() {
                      queryTC.clear();
                    });
                  }
                } else {
                  if (queryTC.text.isNotEmpty) {
                    queryTC.clear();
                    focusNode.requestFocus();
                  }
                }
              },
              focusNode: focusNode,
              onSubmitted: (value) async {
                if (value?.isNotEmpty == true) {
                  context.read<SearchVideoBloc>().add(SearchVideoEvent.search('$value'));
                  animationController.reverse().then((_) {
                    context.read<SearchHistoryCubit>().add(history: '$value');
                  });
                }
              },
              queryTC: queryTC,
            ),
          ),
        ),
        body: BlocConsumer<SearchVideoBloc, SearchVideoState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (videos, channels, hasReachedMax, query) {
                refreshController.loadComplete();
              },
              error: (falure, oldVideos, lastEvent) {
                refreshController.refreshFailed();
              },
            );
          },
          builder: (context, state) {
            return Stack(
              children: [
                SmartRefresher(
                  controller: refreshController,
                  scrollController: scrollController,
                  onLoading: _onLoadMore,
                  enablePullUp: true,
                  enablePullDown: false,
                  footer: const SmartRefresherFooter(),
                  child: CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      SliverToBoxAdapter(
                        child: Container(
                          color: context.theme.brightness == Brightness.dark
                              ? AppColors.darkBarColor
                              : AppColors.darkPrimary,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                            child: Row(
                              children: SearchFilter.values
                                  .mapIndexed(
                                    (e, i) => i == SearchFilter.values[1]
                                        ? Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Container(
                                              width: 1,
                                              height: 30,
                                              color: Theme.of(context).secondaryHeaderColor,
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: CategoryItemWidget(
                                              onTap: () => onFilterButtonTap(i.index),
                                              isSelected: i.index == selectedFilter ? true : false,
                                              name: i.asValue,
                                            ),
                                          ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                      ),
                      state.maybeWhen(
                        loaded: (v, channels, h, q) {
                          final bool isChannel = selectedFilter == 3 || selectedFilter == 0;
                          final bool filterAll = selectedFilter == 0 && !tappedShowMore;
                          if (channels.isNotEmpty && isChannel) {
                            return SliverToBoxAdapter(
                              child: Column(
                                children: [
                                  ListView.separated(
                                    shrinkWrap: true,
                                    physics: const ScrollPhysics(),
                                    itemCount: filterAll ? 2 : channels.length,
                                    itemBuilder: (context, index) {
                                      return ChannelListItemWidget(
                                        channel: channels[index],
                                      );
                                    },
                                    separatorBuilder: (BuildContext context, int index) =>
                                        const Divider(),
                                  ),
                                  if (filterAll)
                                    TextButton(
                                      onPressed: () {
                                        tappedShowMore = true;
                                        setState(
                                          () {
                                            //no-op
                                          },
                                        );
                                      },
                                      child: Text(S.current.more),
                                    ),
                                  if (selectedFilter == 0 && tappedShowMore)
                                    TextButton(
                                      onPressed: () {
                                        tappedShowMore = false;
                                        setState(
                                          () {
                                            //no-op
                                          },
                                        );
                                      },
                                      child: Text(S.current.hide),
                                    ),
                                  selectedFilter == 0 ? const Divider() : Container(),
                                ],
                              ),
                            );
                          }
                          if (channels.isEmpty) {
                            return SliverFillRemaining(
                              child: Center(
                                child: Text(
                                  S.current.query_not_found(q),
                                ),
                              ),
                            );
                          }
                          return SliverToBoxAdapter(child: Container());
                        },
                        orElse: () => SliverToBoxAdapter(
                          child: Container(),
                        ),
                      ),
                      state.when(
                        initial: () {
                          return const SliverToBoxAdapter(
                            child: Center(),
                          );
                        },
                        loaded: (videos, channels, hasReachedMax, query) {
                          final bool isVideo = selectedFilter == 2 || selectedFilter == 0;
                          if (videos.isNotEmpty && isVideo) {
                            return VideoListWidget(
                              videos: videos,
                            );
                          }
                          if (videos.isEmpty) {
                            return SliverFillRemaining(
                              child: Center(
                                child: Text(S.current.query_not_found(query)),
                              ),
                            );
                          }
                          return SliverToBoxAdapter(
                            child: Container(),
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
                        error: (failure, oldVideos, lastEvent) {
                          return SliverCustomErrorWidget(
                            failure: failure,
                            onTap: () {
                              context.read<SearchVideoBloc>().add(lastEvent);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SearchHistoryWidget(
                  animationController: animationController,
                  onItemSelected: (historyItem) {
                    animationController.reverse();
                    context.read<SearchVideoBloc>().add(SearchVideoEvent.search(historyItem));
                    queryTC.text = historyItem;
                    focusNode.unfocus();
                    setState(() {});
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class SearchHistoryWidget extends StatelessWidget {
  final Function(String historyItem) onItemSelected;
  final AnimationController animationController;

  const SearchHistoryWidget({
    super.key,
    required this.onItemSelected,
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const SizedBox();
          },
          loaded: (searchHistoryList) {
            return AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                return Opacity(
                  opacity: animationController.value,
                  child: animationController.value > 0.0 ? child : const SizedBox.shrink(),
                );
              },
              child: Material(
                color: context.theme.scaffoldBackgroundColor,
                child: CustomScrollView(
                  slivers: [
                    if (searchHistoryList.isNotEmpty)
                      SliverList.builder(
                        itemCount: searchHistoryList.length,
                        itemBuilder: (context, index) {
                          final historyItem = searchHistoryList[index];
                          return InkWrapper(
                            onTap: () {
                              onItemSelected.call(historyItem);
                            },
                            child: Container(
                              height: 55,
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  const Icon(Icons.history),
                                  const SizedBox(width: 15),
                                  Flexible(
                                    child: Text(
                                      historyItem,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
