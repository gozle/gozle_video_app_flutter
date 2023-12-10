import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:video_gozle/features/global/domain/models/expansion.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';
import 'package:video_gozle/features/video/presentation/video_player/logic/video_player_provider.dart';
import 'package:video_gozle/features/video/presentation/video/widget/main_video_widget.dart';

class MiniplayerWidget extends StatelessWidget {
  final AnimationController miniplayerAnimationController;
  final PanelController panelController;

  const MiniplayerWidget({
    super.key,
    required this.miniplayerAnimationController,
    required this.panelController,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      right: true,
      child: SlidingUpPanel(
        color: Theme.of(context).navigationBarTheme.backgroundColor!,
        minHeight: 55,
        onPanelOpened: () async {
          context
              .read<VideoPlayerProvider>()
              .worldVideoPlayerController
              ?.enableControls();

          if (MediaQuery.of(context).orientation == Orientation.landscape) {
            await context
                .read<VideoPlayerProvider>()
                .worldVideoPlayerController
                ?.enableFullScreen();
          } else {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitUp,
            ]);
          }
        },
        onPanelSlide: (position) {
          miniplayerAnimationController.animateTo(position);
        },
        onPanelClosed: () async {
          await context
              .read<VideoPlayerProvider>()
              .worldVideoPlayerController
              ?.disableControls();

          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ]);
        },
        defaultPanelState: PanelState.CLOSED,
        maxHeight: MediaQuery.of(context).size.height -
            (Scaffold.of(context).appBarMaxHeight ?? 0),
        controller: panelController,
        backdropColor: Colors.black,
        backdropEnabled: true,
        margin: EdgeInsets.zero,
        backdropOpacity: 1,
        panelSnapping: true,
        panel: MainVideoWidget(
          context: context,
          miniplayerAnimationController: miniplayerAnimationController,
          panelMaxHeight: MediaQuery.of(context).size.height -
              (Scaffold.of(context).appBarMaxHeight ?? 0) -
              50,
          expansion: context
                  .read<VideoBloc>()
                  .state
                  .whenOrNull(loaded: (video) => video.expansion) ??
              Expansion(),
        ),
      ),
    );
  }
}
