import 'package:flutter/material.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/controls/controls_mode.dart';
import '../world_video_player/src/player_controller.dart';

class VideoPlayerProvider extends ChangeNotifier {
  late WorldVideoPlayerController worldVideoPlayerController;

  bool _initial = true;

  Future<void> playVideo({required String url, String? title, String? thumbnail}) async {
    if (!_initial) {
      worldVideoPlayerController.dispose();
    } else {
      _initial = false;
    }

    notifyListeners();

    try {
      worldVideoPlayerController = WorldVideoPlayerController.network(
        url: url,
        title: title,
        thumbnail: thumbnail,
        controlsType: ControlsType.CUSTOM,
      );

      notifyListeners();

      worldVideoPlayerController.enableAutoPlay();

      await worldVideoPlayerController.init();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> removeVideo() async {
    await worldVideoPlayerController.dispose();
  }

  void setAspectRatio(double newAspectRatio) {
    worldVideoPlayerController.setAspectRation(newAspectRatio);
  }

  @override
  void dispose() {
    removeVideo();
    super.dispose();
  }
}
