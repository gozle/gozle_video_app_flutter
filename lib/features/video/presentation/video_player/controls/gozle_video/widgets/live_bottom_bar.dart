import 'package:flutter/material.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/player_controller.dart';

import '../../../world_video_player/src/enums/enums.dart';
import 'duration_widgets.dart';
import 'full_screen_button.dart';

class LiveBottomBar extends StatefulWidget {
  final WorldVideoPlayerController controller;

  final Color liveUIColor;

  final bool showLiveFullscreenButton;

  LiveBottomBar({
    required this.controller,
    required this.liveUIColor,
    required this.showLiveFullscreenButton,
  });

  @override
  _LiveBottomBarState createState() => _LiveBottomBarState();
}

class _LiveBottomBarState extends State<LiveBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.controller.value.controlsState == ControlsState.VISIBLE,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            width: 14.0,
          ),
          CurrentPosition(controller: widget.controller),
          const Text(
            ' LIVE ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          widget.showLiveFullscreenButton
              ? FullScreenButton(controller: widget.controller)
              : const SizedBox(width: 14.0),
        ],
      ),
    );
  }
}
