import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/video/domain/model/video_ads_model.dart';
import 'package:video_gozle/features/video/domain/usecases/video_use_cases.dart';
import 'package:video_gozle/features/video/presentation/video_player/logic/video_player_provider.dart';
import 'package:video_gozle/injection.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

part 'video_event.dart';
part 'video_state.dart';
part 'video_bloc.freezed.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final VideoPlayerProvider videoPlayerProvider;

  VideoBloc(this.videoPlayerProvider) : super(const VideoState.initial()) {
    on<_PlayNetwork>(_onPlayNetwork);
    on<_CloseAdd>(_closeAddAndStartVideo);
    on<_PlayCashed>(_onPlayCashed);
    on<_Remove>(_onRemove);
    on<_ExpandMiniplayer>(_onExpand);
    on<_MinimizeMiniplayer>(_onMinimize);
  }

  VideoUseCases get videoUseCases => locator<VideoUseCases>();

  PanelController? miniplayerController;

  _PlayNetwork? _playNetworkEvent;

  void setMiniplayerController({
    required PanelController miniplayerController,
  }) {
    this.miniplayerController = miniplayerController;
  }

  FutureOr<void> _onRemove(_Remove event, Emitter<VideoState> emit) {
    videoPlayerProvider.removeVideo();
    videoPlayerProvider.removeAdd();
    emit(const VideoState.initial());

    WakelockPlus.disable();
  }

  FutureOr<void> _onExpand(_ExpandMiniplayer event, Emitter<VideoState> emit) async {
    if (miniplayerController?.isAttached == true) {
      miniplayerController!.animatePanelToPosition(
        1,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      await Future.delayed(const Duration(milliseconds: 300));

      if (miniplayerController?.isAttached == true) {
        miniplayerController!.animatePanelToPosition(
          1,
          duration: const Duration(milliseconds: 0),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  FutureOr<void> _onMinimize(_MinimizeMiniplayer event, Emitter<VideoState> emit) {
    if (miniplayerController?.isAttached == true) {
      miniplayerController!.animatePanelToPosition(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> _onPlayNetwork(_PlayNetwork event, Emitter<VideoState> emit) async {
    _playNetworkEvent = event;

    WakelockPlus.enable();

    Future.delayed(const Duration(milliseconds: 300)).then((value) {
      add(const VideoEvent.expand());
    });

    emit(VideoState.loading(
      videoId: event.videoId,
      title: event.title,
    ));
    var lastView = videoUseCases.getAdsLastView();
    if (lastView?.isAfter(DateTime.now().add(const Duration(minutes: -10))) == true) {
      add(const _CloseAdd());
      return;
    } else {
      await videoUseCases.updateAdsLastView();
    }
    //fetching advertisement
    final videoAdResult = await videoUseCases.getVideoAd();
    // final videoAdResult = await videoUseCases.getTestVideoAd();

    videoAdResult.fold(
      (failure) {
        add(const _CloseAdd());
      },
      (videoAd) async {
        emit(VideoState.advertisementLoaded(videoAd: videoAd));
        try {
          await videoPlayerProvider.startAdvertisement(
            url: videoAd.video,
            thumbnail: videoAd.image,
            skipDuration: videoAd.skip_duration,
          );
        } catch (e) {
          await Future.delayed(Duration(seconds: videoAd.skip_duration));
          add(const _CloseAdd());
        }
      },
    );
  }

  FutureOr<void> _closeAddAndStartVideo(_, Emitter<VideoState> emit) async {
    if (_playNetworkEvent != null) {
      emit(VideoState.loading(
        videoId: _playNetworkEvent!.videoId,
        title: _playNetworkEvent!.title,
      ));

      await videoPlayerProvider.removeAdd();

      // если играю видео из списка а не с deep link
      if (_playNetworkEvent!.url != null) {
        try {
          videoPlayerProvider.playVideo(
            url: _playNetworkEvent!.url!,
            thumbnail: _playNetworkEvent!.thumbnail,
            title: _playNetworkEvent!.title,
          );
        } catch (e) {
          emit(VideoState.error(
            failure: UnexpectedFailure(),
            videoId: _playNetworkEvent!.videoId,
          ));
        }
      }

      final result = await videoUseCases.getVideoDetails(videoId: _playNetworkEvent!.videoId);

      result.fold(
        (failure) {
          if (failure is SocketFailure) {
            Future.delayed(const Duration(seconds: 5)).then((value) {
              add(_playNetworkEvent!);
            });
          } else {
            emit(VideoState.error(
              failure: failure,
              videoId: _playNetworkEvent!.videoId,
            ));
          }
        },
        (videoDetails) {
          // если играю видео c deep link
          emit(VideoState.loaded(video: videoDetails));
          if (_playNetworkEvent!.url == null) {
            videoPlayerProvider.playVideo(
              url: videoDetails.m3u8!,
              thumbnail: videoDetails.thumbnailUrl,
              title: videoDetails.title,
            );
          }
          videoPlayerProvider.setAspectRatio(videoDetails.expansion?.aspectRatio ?? 16 / 9);
        },
      );
    }
  }

  FutureOr<void> _onPlayCashed(_PlayCashed event, Emitter<VideoState> emit) {}
}
