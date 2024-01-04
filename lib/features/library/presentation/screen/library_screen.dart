import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/features/auth/presentation/logic/user_bloc/user_bloc.dart';
import 'package:video_gozle/features/auth/presentation/widget/logout_alert_dialog.dart';
import 'package:video_gozle/features/global/presentation/widget/menu_item_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/smart_refresher_header.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/small_video_item_widget.dart';
import 'package:video_gozle/features/library/presentation/logic/history_list_bloc/history_list_bloc.dart';
import 'package:video_gozle/features/library/presentation/widget/account_card_widget.dart';
import 'package:video_gozle/features/nav/presentation/widget/main_app_bar.dart';
import 'package:video_gozle/features/settings/presentation/logic/settings/settings_provider.dart';
import 'package:video_gozle/features/settings/presentation/screen/settings_screen.dart';
import 'package:video_gozle/features/splash/presentation/screen/splash_screen.dart';
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
    return Consumer<SettingsProvider>(builder: (_, __, ___) {
      return Scaffold(
        appBar: const MainAppBar(),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return ListView(
                  children: [
                    Image.asset(
                      AppAssets.signInImage,
                      fit: BoxFit.fitHeight,
                      height: MediaQuery.of(context).size.height / 3,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Column(
                        children: [
                          Text(
                            S.current.sign_in_gozle_account,
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            S.current.without_sign_missing_features,
                            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: const ButtonStyle(
                              alignment: Alignment.center,
                              minimumSize: MaterialStatePropertyAll(
                                Size.fromHeight(40),
                              ),
                            ),
                            onPressed: () {
                              context.read<UserBloc>().state.whenOrNull(
                                unauthenticated: (oAuthClientData) {
                                  if (oAuthClientData != null) {
                                    context.read<UserBloc>().add(
                                      UserEvent.login(oAuthClientData: oAuthClientData),
                                    );
                                  }
                                },
                              );
                              Future.delayed(const Duration(seconds: 2)).then(
                                    (value) => Navigator.of(context, rootNavigator: true)
                                    .pushReplacementNamed(SplashScreen.routeName),
                              );
                            },
                            child: Text(S.current.sign_in),
                          )
                        ],
                      ),
                    ),
                    MenuItemWidget(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const SettingsScreen()));
                      },
                      label: S.current.settings,
                    ),
                    const Divider(),
                    MenuItemWidget(
                      onTap: () {
                        launchUrlString(AppConstants.supportLink);
                      },
                      label: S.current.help,
                    ),
                    const Divider(),
                  ],
                );
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
                                            left: index == 0 ? 24 : 0,
                                            right: index + 1 == 5 ? 24 : 10),
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
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const SettingsScreen()));
                          },
                          label: S.current.settings,
                        ),
                      ),
                      const SliverToBoxAdapter(child: Divider()),
                      SliverToBoxAdapter(
                        child: MenuItemWidget(
                          onTap: () {
                            launchUrlString(AppConstants.supportLink);
                          },
                          label: S.current.help,
                        ),
                      ),
                      const SliverToBoxAdapter(child: Divider()),
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
    });
  }
}
