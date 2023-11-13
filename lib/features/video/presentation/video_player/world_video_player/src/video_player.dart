import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import 'controls/player_controls.dart';
import 'player_controller.dart';

class WorldVideoPlayer extends StatelessWidget {
  final WorldVideoPlayerController controller;
  final Widget? customControls;

  final Size? size;
  final double expansionHeight;
  final double expansionWidth;

  const WorldVideoPlayer({
    super.key,
    required this.controller,
    this.customControls,
    this.size,
    this.expansionHeight = 9,
    this.expansionWidth = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WorldVideoPlayerController>.value(
      value: controller,
      child: Builder(
        builder: (context) {
          if (size != null) {
            return Consumer<WorldVideoPlayerController>(
              builder: (context, value, child) {
                return SizedBox(
                  height: size?.height,
                  width: size?.width,
                  child: Stack(
                    children: [
                      ClipRect(
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: double.parse('$expansionWidth'),
                              height: double.parse('$expansionHeight'),
                              child: VideoPlayer(controller.videoPlayerController),
                            ),
                          ),
                        ),
                      ),
                      PlayerControlls(customControls: customControls),
                    ],
                  ),
                );
              },
            );
          } else {
            return Consumer<WorldVideoPlayerController>(
              builder: (context, value, child) {
                return AspectRatio(
                  aspectRatio: expansionWidth / expansionHeight,
                  child: Stack(
                    children: [
                      VideoPlayer(controller.videoPlayerController),
                      PlayerControlls(customControls: customControls),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
