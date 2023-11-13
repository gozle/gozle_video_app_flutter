import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/controls/player_controls.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/enums/fullscreen_state.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/player_controller.dart';
import 'package:video_player/video_player.dart';

class WorldVideoFullScreenPlayer extends StatefulWidget {
  final WorldVideoPlayerController controller;
  final Widget? customControls;

  const WorldVideoFullScreenPlayer({
    super.key,
    required this.controller,
    this.customControls,
  });

  @override
  State<WorldVideoFullScreenPlayer> createState() => _WorldVideoFullScreenPlayerState();
}

class _WorldVideoFullScreenPlayerState extends State<WorldVideoFullScreenPlayer> {
  FullScreenState fullScreenState = FullScreenState.ENABLED;

  @override
  void initState() {
    widget.controller.addListener(_fullScreenListener);
    super.initState();
  }

  void _fullScreenListener() {
    if (mounted) {
      setState(() {});
    }

    if (widget.controller.value.fullScreenState != fullScreenState) {
      setState(() {
        fullScreenState = widget.controller.value.fullScreenState;
        widget.controller.value.copyWith(fullScreenState: fullScreenState);
      });

      if (fullScreenState == FullScreenState.CLOSING) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_fullScreenListener);
    widget.controller.value.copyWith(fullScreenState: FullScreenState.DISABLED);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.controller.disableFullScreen();
        return false;
      },
      child: Material(
        color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: widget.controller.value.aspectRatio,
              child: VideoPlayer(widget.controller.videoPlayerController),
            ),
            ChangeNotifierProvider<WorldVideoPlayerController>.value(
              value: widget.controller,
              child: PlayerControlls(
                customControls: widget.customControls,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
