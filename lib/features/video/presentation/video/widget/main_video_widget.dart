import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_details_cubit/channel_details_cubit.dart';
import 'package:video_gozle/features/global/domain/models/expansion.dart';
import 'package:video_gozle/features/global/presentation/widget/error_widget/custom_error_widget.dart';
import 'package:video_gozle/features/video/presentation/miniplayer/widget/miniplayer_title_widget.dart';
import 'package:video_gozle/features/video/presentation/video/logic/suggested_video_list_bloc/suggested_video_list_bloc.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';
import 'package:video_gozle/features/video/presentation/video/widget/advertisementLoaded/advertisement_loaded_widget.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/loaded_video_details_widget.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loading/loading_video_details_widget.dart';
import 'package:video_gozle/features/video/presentation/video_player/controls/gozle_video/gozle_video_controls.dart';
import 'package:video_gozle/features/video/presentation/video_player/controls/gozle_video/video_ad_controls.dart';
import 'package:video_gozle/features/video/presentation/video_player/controls/gozle_video/widgets/widgets.dart';
import 'package:video_gozle/features/video/presentation/video_player/logic/video_player_provider.dart';

import '../../video_player/world_video_player/world_video_player.dart';

class MainVideoWidget extends AnimatedWidget {
  final BuildContext context;
  final AnimationController miniplayerAnimationController;
  final Expansion expansion;
  final double panelMaxHeight;

  MainVideoWidget({
    super.key,
    required this.miniplayerAnimationController,
    required this.context,
    required this.expansion,
    required this.panelMaxHeight,
  })  : playerHeight = Tween<double>(
          begin: minHeight,
          end:
              (MediaQuery.of(context).size.width / expansion.aspectRatio).clamp(
            MediaQuery.of(context).size.width * 9 / 16,
            MediaQuery.of(context).size.width * 4 / 3.5,
          ),
        ).animate(
          CurvedAnimation(
            parent: miniplayerAnimationController,
            curve: const Interval(0, 1),
          ),
        ),
        playerWidth = Tween<double>(
          begin: 130,
          end: MediaQuery.of(context).size.width,
        ).animate(
          CurvedAnimation(
            parent: miniplayerAnimationController,
            curve: Interval(
              0,
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? 0.1
                  : 0.7,
            ),
          ),
        ),
        super(listenable: miniplayerAnimationController);

  final Duration duration = const Duration(milliseconds: 50);

  static const double minHeight = 55;

  final Animation<double> playerHeight;
  final Animation<double> playerWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Consumer<VideoPlayerProvider>(
          builder: (BuildContext context,
              VideoPlayerProvider videoPlayerProvider, Widget? child) {
            if (videoPlayerProvider.isAdPlaying &&
                videoPlayerProvider.adsVideoController != null) {
              return Stack(
                children: [
                  Row(
                    children: [
                      WorldVideoPlayer(
                        controller: videoPlayerProvider.adsVideoController!,
                        expansionHeight: expansion.height,
                        expansionWidth: expansion.width,
                        customControls: VideoAdControls(
                          onMinimizeTap: () {
                            context
                                .read<VideoBloc>()
                                .add(const VideoEvent.minimize());
                          },
                          onSkip: () {
                            context
                                .read<VideoBloc>()
                                .add(const VideoEvent.closeAdd());
                          },
                          skipDurationInSec: videoPlayerProvider.skipDuration,
                          progressBarTheme: ProgressBarTheme(
                            collapsedProgressBarColor: Colors.red,
                            expandedProgressBarColor: Colors.red,
                            collapsedThumbColor: Colors.red,
                          ),
                          controller: videoPlayerProvider.adsVideoController!,
                        ),
                        size: Size(
                          playerWidth.value,
                          playerHeight.value,
                        ),
                      ),
                      MiniplayerTitle(
                        controller: videoPlayerProvider.adsVideoController!,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: [
                        CustomProgressBar(
                          controller: videoPlayerProvider.adsVideoController!,
                          progressBarTheme: ProgressBarTheme(
                            collapsedBufferedBarColor: Colors.white,
                            collapsedProgressBarColor: Colors.red,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 30,
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }
            if (videoPlayerProvider.worldVideoPlayerController != null) {
              return Stack(
                children: [
                  Row(
                    children: [
                      WorldVideoPlayer(
                        controller: videoPlayerProvider.worldVideoPlayerController!,
                        expansionHeight: expansion.height,
                        expansionWidth: expansion.width,
                        customControls: GozleVideoControls(
                          onMinimizeTap: () {
                            context
                                .read<VideoBloc>()
                                .add(const VideoEvent.minimize());
                          },
                          progressBarTheme: ProgressBarTheme(),
                          controller:
                              videoPlayerProvider.worldVideoPlayerController!,
                        ),
                        size: Size(
                          playerWidth.value,
                          playerHeight.value,
                        ),
                      ),
                      MiniplayerTitle(
                        controller: videoPlayerProvider.worldVideoPlayerController!,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: CustomProgressBar(
                      controller: videoPlayerProvider.worldVideoPlayerController!,
                      progressBarTheme: ProgressBarTheme(),
                    ),
                  )
                ],
              );
            }
            return const AspectRatio(
              aspectRatio: 16 / 9,
              child: SizedBox(),
            );
          },
        ),
        Expanded(
          child: BlocBuilder<VideoBloc, VideoState>(
            builder: (context, state) {
              return Opacity(
                opacity: miniplayerAnimationController.value,
                child: state.maybeWhen(
                  advertisementLoaded: (ad) {
                    return AdvertisementLoadedWidget(videoAd: ad);
                  },
                  loaded: (video) {
                    return MultiBlocProvider(
                      providers: [
                        BlocProvider(
                            create: (context) => SuggestedVideoListBloc(
                                channelId: video.channelId)),
                        // чтобы получить данные о категориях и подписан ли я на этот канал
                        BlocProvider(
                            create: (context) => ChannelDetailsCubit(
                                channelId: video.channelId)),
                      ],
                      child: LoadedVideoDetailsWidget(
                        video: video,
                        videoDetailsBottomSheetHeight:
                            MediaQuery.of(context).size.height -
                                (Scaffold.of(context).appBarMaxHeight ?? 0) -
                                45 -
                                playerHeight.value,
                      ),
                    );
                  },
                  loading: (videoId, title) {
                    return LoadingVideoDetailsWidget(
                        title: title, videoId: videoId);
                  },
                  error: (failure, videoId) {
                    return CustomErrorWidget(
                      failure: failure,
                      onTap: () {
                        context
                            .read<VideoBloc>()
                            .add(VideoEvent.playNetworkVideo(videoId: videoId));
                      },
                    );
                  },
                  orElse: () {
                    return const SizedBox();
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
