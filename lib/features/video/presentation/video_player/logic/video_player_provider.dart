import 'package:flutter/material.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/controls/controls_mode.dart';
import '../world_video_player/src/player_controller.dart';

class VideoPlayerProvider extends ChangeNotifier {
  WorldVideoPlayerController? worldVideoPlayerController;

  WorldVideoPlayerController? adsVideoController;
  bool isAdPlaying = false;
  int skipDuration = 5;

  bool _initial = true;

  Future<void> playVideo(
      {required String url, String? title, String? thumbnail}) async {
    if (!_initial) {
      worldVideoPlayerController?.dispose();
    } else {
      _initial = false;
    }
    // notifyListeners();

    try {
      worldVideoPlayerController = WorldVideoPlayerController.network(
        url: url,
        title: title,
        thumbnail: thumbnail,
        controlsType: ControlsType.CUSTOM,
      );

      notifyListeners();

      worldVideoPlayerController!.enableAutoPlay();

      await worldVideoPlayerController!.init();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> startAdvertisement({
    required String url,
    required String thumbnail,
    required int skipDuration,
  }) async {
    this.skipDuration = skipDuration;
    try {
      if (adsVideoController != null) {
        await adsVideoController!.dispose();
      }

      if (worldVideoPlayerController != null) {
        await worldVideoPlayerController!.pause();
      }

      adsVideoController = WorldVideoPlayerController.network(
        url: url,
        controlsType: ControlsType.DEFAULT,
        thumbnail: thumbnail,
      );
      isAdPlaying = true;
      notifyListeners();
      adsVideoController!.enableAutoPlay();
      await adsVideoController!.init();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> removeAdd() async {
    await adsVideoController?.dispose();
    isAdPlaying = false;
    adsVideoController = null;
    notifyListeners();
  }

  Future<void> removeVideo() async {
    await worldVideoPlayerController?.dispose();
    worldVideoPlayerController = null;
    notifyListeners();
  }

  void setAspectRatio(double newAspectRatio) {
    worldVideoPlayerController?.setAspectRation(newAspectRatio);
  }

  @override
  void dispose() {
    removeVideo();
    super.dispose();
  }
}
