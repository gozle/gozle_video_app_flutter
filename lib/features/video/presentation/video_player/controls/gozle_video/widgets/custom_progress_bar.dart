import 'package:flutter/material.dart';
import 'package:flutter_animated_progress_bar/flutter_animated_progress_bar.dart';

import '../../../world_video_player/src/player_controller.dart';

class CustomProgressBar extends StatefulWidget {
  final WorldVideoPlayerController controller;
  final ProgressBarTheme progressBarTheme;

  const CustomProgressBar({
    super.key,
    required this.controller,
    required this.progressBarTheme,
  });

  @override
  State<CustomProgressBar> createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar> with TickerProviderStateMixin {
  late ProgressBarController _progressBarController;

  @override
  void initState() {
    super.initState();
    _progressBarController = ProgressBarController(vsync: this);
  }

  @override
  void dispose() {
    _progressBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // todo change colors
    return ProgressBar(
      progressBarIndicator: RoundedRectangularProgressBarIndicator(
          backgroundColor: widget.progressBarTheme.expandedProgressBarColor),
      controller: _progressBarController,
      progress: widget.controller.value.position,
      buffered: widget.controller.value.buffered,
      total: widget.controller.value.totalDuration,
      backgroundBarColor: widget.progressBarTheme.backgroundBarColor,
      alignment: ProgressBarAlignment.bottom,
      thumbGlowColor: widget.progressBarTheme.thumbGlowColor,
      thumbElevation: widget.progressBarTheme.thumbElevation,
      thumbGlowRadius: widget.progressBarTheme.thumbGlowRadius,
      collapsedBarHeight: widget.progressBarTheme.collapsedBarHeight,
      expandedBarHeight: widget.progressBarTheme.expandedBarHeight,
      expandedThumbRadius: widget.progressBarTheme.expandedThumbRadius,
      collapsedThumbRadius: widget.progressBarTheme.collapsedThumbRadius,
      collapsedProgressBarColor: widget.progressBarTheme.collapsedProgressBarColor,
      collapsedBufferedBarColor: widget.progressBarTheme.collapsedBufferedBarColor,
      collapsedThumbColor: widget.progressBarTheme.collapsedThumbColor,
      expandedThumbColor: widget.progressBarTheme.expandedThumbColor,
      expandedBufferedBarColor: widget.progressBarTheme.expandedBufferedBarColor,
      expandedProgressBarColor: widget.progressBarTheme.expandedProgressBarColor,
      onSeek: (position) async {
        await widget.controller.seekTo(position);
        await Future.delayed(const Duration(seconds: 1));
        await widget.controller.hideControls();
      },
      onChangeStart: (value) {
        widget.controller.setControlsAlwaysVisible();
      },
    );
  }
}

class ProgressBarTheme {
  final Color collapsedProgressBarColor;
  final Color collapsedBufferedBarColor;
  final Color collapsedThumbColor;
  final Color expandedThumbColor;
  final Color expandedBufferedBarColor;
  final Color expandedProgressBarColor;
  final Color thumbGlowColor;
  final Color backgroundBarColor;

  final double collapsedThumbRadius;
  final double expandedThumbRadius;
  final double expandedBarHeight;
  final double collapsedBarHeight;
  final double thumbGlowRadius;
  final double thumbElevation;

  ProgressBarTheme({
    this.collapsedThumbColor = const Color(0xff00ACEE),
    this.expandedThumbColor = const Color(0xff00ACEE),
    this.expandedBufferedBarColor = const Color(0x6600ACEE),
    this.collapsedBufferedBarColor = const Color(0x6600ACEE),
    this.expandedProgressBarColor = const Color(0xff00ACEE),
    this.collapsedProgressBarColor = const Color(0xff00ACEE),
    this.backgroundBarColor = const Color(0xffD9D9D9),
    this.thumbGlowColor = Colors.white,
    this.collapsedThumbRadius = 5,
    this.expandedThumbRadius = 15,
    this.expandedBarHeight = 5,
    this.collapsedBarHeight = 3,
    this.thumbGlowRadius = 10,
    this.thumbElevation = 0,
  });
}
