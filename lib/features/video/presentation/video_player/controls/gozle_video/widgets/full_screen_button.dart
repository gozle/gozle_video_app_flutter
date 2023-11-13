import 'package:flutter/material.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/enums/fullscreen_state.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/player_controller.dart';

class FullScreenButton extends StatelessWidget {
  final WorldVideoPlayerController controller;

  final Color color;

  const FullScreenButton({
    super.key,
    required this.controller,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        controller.value.fullScreenState == FullScreenState.ENABLED
            ? Icons.fullscreen_exit
            : Icons.fullscreen,
        color: color,
      ),
      onPressed: () {
        if (controller.value.fullScreenState == FullScreenState.ENABLED) {
          controller.disableFullScreen();
        } else {
          controller.enableFullScreen();
        }
      },
    );
  }
}
