import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/features/auth/presentation/logic/user_bloc/user_bloc.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_header.dart';
import 'package:video_gozle/features/library/presentation/widget/account_card_widget.dart';
import 'package:video_gozle/features/auth/presentation/widget/logout_alert_dialog.dart';
import 'package:video_gozle/features/global/presentation/widget/menu_item_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/small_video_item_widget.dart';
import 'package:video_gozle/features/library/presentation/logic/history_list_bloc/history_list_bloc.dart';
import 'package:video_gozle/features/nav/presentation/widget/main_app_bar.dart';
import 'package:video_gozle/features/settings/presentation/screen/settings_screen.dart';
import 'package:video_gozle/generated/l10n.dart';

class LibraryScreen extends StatefulWidget {
  static const String routeName = '/library';
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => LibraryScreenState();
}

class LibraryScreenState extends State<LibraryScreen> {
  @override
  void initState() {
    refreshController = RefreshController(initialRefresh: false);

    context.read<HistoryListBloc>().add(const HistoryListEvent.load());

    super.initState();
  }

  late RefreshController refreshController;

  @override
  void dispose() {
    refreshController.dispose();
    super.dispose();
  }

  void _onRefresh() {
    context.read<UserBloc>().add(const UserEvent.update());
    context.read<HistoryListBloc>().add(const HistoryListEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return ElevatedButton(onPressed: () {}, child: Text(S.current.retry));
            },
            authenticated: (user) {
              return SmartRefresher(
                controller: refreshController,
                header: const SmartRefresherHeader(),
                onRefresh: _onRefresh,
                enablePullUp: false,
                enablePullDown: true,
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                      sliver: SliverToBoxAdapter(child: AccountCardWidget(user: user)),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          S.current.history,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 180,
                        child: BlocConsumer<HistoryListBloc, HistoryListState>(
                          listener: (context, state) {
                            state.whenOrNull(
                              loaded: (videos, hasReachedMax) {
                                refreshController.refreshCompleted();
                              },
                              error: (oldVideos, lastEvent, falure) {
                                refreshController.refreshFailed();
                              },
                            );
                          },
                          builder: (context, state) {
                            return state.maybeWhen(
                              loaded: (videos, hasReachedMax) {
                                return ListView.separated(
                                  itemCount: videos.length,
                                  padding: const EdgeInsets.symmetric(horizontal: 24),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(width: 10);
                                  },
                                  itemBuilder: (context, index) {
                                    return SmallVideoItemWidget(
                                      video: videos[index],
                                    );
                                  },
                                );
                              },
                              orElse: () {
                                return ListView.builder(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.only(
                                          left: index == 0 ? 24 : 0, right: index + 1 == 5 ? 24 : 10),
                                      child: SmallVideoItemWidget.placeHolder(context),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(child: Divider(height: 10)),
                    // SliverToBoxAdapter(
                    //   child: MenuItemWidget(
                    //     onTap: () {
                    //       Navigator.of(context)
                    //           .push(MaterialPageRoute(builder: (context) => const SubscribePremiumScreen()));
                    //     },
                    //     label: 'Покупки и платные подписки',
                    //   ),
                    // ),
                    SliverToBoxAdapter(
                      child: MenuItemWidget(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => const SettingsScreen()));
                        },
                        label: S.current.settings,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: MenuItemWidget(
                        onTap: () {
                          launchUrlString(AppConstants.supportLink);
                        },
                        label: S.current.help,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: MenuItemWidget(
                        onTap: () {
                          launchUrlString(AppConstants.getStoreLink());
                        },
                        label: S.current.leave_review,
                      ),
                    ),
                    const SliverToBoxAdapter(child: Divider(height: 10)),
                    SliverToBoxAdapter(
                      child: MenuItemWidget(
                        onTap: () {
                          LogoutAlerDialog.show(context);
                        },
                        label: S.current.sign_out,
                        textColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
