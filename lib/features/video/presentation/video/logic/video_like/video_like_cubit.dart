import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/features/video/domain/usecases/video_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'video_like_state.dart';
part 'video_like_cubit.freezed.dart';

class VideoLikeCubit extends Cubit<VideoLikeState> {
  final String videoId;
  int likesCount;
  bool isLiked;

  VideoLikeCubit({
    required this.videoId,
    required this.likesCount,
    required this.isLiked,
  }) : super(VideoLikeState.notLiked(likesCount: likesCount)) {
    if (isLiked) {
      emit(VideoLikeState.liked(likesCount: likesCount));
    } else {
      emit(VideoLikeState.notLiked(likesCount: likesCount));
    }
  }

  VideoUseCases get videoUseCases => locator<VideoUseCases>();

  Future<void> likeVideo() async {
    final newLikesCount = isLiked ? likesCount : likesCount + 1; // Учет изначального состояния
    emit(VideoLikeState.liked(likesCount: newLikesCount));

    final result = await videoUseCases.likeVideo(videoId: videoId);

    result.fold(
      (failure) {
        emit(VideoLikeState.notLiked(likesCount: likesCount));
      },
      (success) {
        likesCount = newLikesCount; // Обновление состояния
        isLiked = true; // Обновление состояния
        emit(VideoLikeState.liked(likesCount: newLikesCount));
      },
    );
  }

  Future<void> removeLike() async {
    final newLikesCount = isLiked ? likesCount - 1 : likesCount; // Учет изначального состояния
    emit(VideoLikeState.notLiked(likesCount: newLikesCount));

    final result = await videoUseCases.removeLike(videoId: videoId);

    result.fold(
      (failure) {
        emit(VideoLikeState.liked(likesCount: likesCount));
      },
      (success) {
        likesCount = newLikesCount; // Обновление состояния
        isLiked = false; // Обновление состояния
        emit(VideoLikeState.notLiked(likesCount: newLikesCount));
      },
    );
  }
}
