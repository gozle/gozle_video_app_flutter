import 'package:flutter/material.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/helpers/duration_formatter.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/player_controller.dart';

class CurrentPosition extends StatefulWidget {
  final WorldVideoPlayerController controller;

  CurrentPosition({required this.controller});

  @override
  _CurrentPositionState createState() => _CurrentPositionState();
}

class _CurrentPositionState extends State<CurrentPosition> {
  @override
  Widget build(BuildContext context) {
    return Text(
      durationFormatter(
        widget.controller.value.position.inMilliseconds,
      ),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 12.0,
      ),
    );
  }
}
