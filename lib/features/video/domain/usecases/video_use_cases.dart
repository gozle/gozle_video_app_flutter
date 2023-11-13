import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/video/domain/model/comment_model.dart';
import 'package:video_gozle/features/video/domain/repository/video_repository.dart';

class VideoUseCases {
  final VideoRepository videoRepository;

  VideoUseCases({required this.videoRepository});

  Future<Either<Failure, Video>> getVideoDetails({
    required String videoId,
  }) =>
      videoRepository.getVideoDetails(videoId: videoId);

  Future<Either<Failure, List<Video>>> getSuggestedVideos({
    required String channelId,
    required int amount,
    required int page,
  }) =>
      videoRepository.getSuggestedVideos(
        channelId: channelId,
        amount: amount,
        page: page,
      );

  Future<Either<Failure, List<Video>>> getVideoByCategory({
    required int page,
    required int amount,
    required VideoCategory category,
  }) =>
      videoRepository.getVideoByCategory(
        category: category,
        amount: amount,
        page: page,
      );

  Future<Either<Failure, List<Comment>>> getCommentsByVideo({
    required int page,
    required int amount,
    required String videoId,
  }) =>
      videoRepository.getCommentsByVideo(
        videoId: videoId,
        amount: amount,
        page: page,
      );

  Future<Either<Failure, void>> postComment({
    required String message,
    required String videoId,
  }) =>
      videoRepository.postComment(
        message: message,
        videoId: videoId,
      );

  Future<Either<Failure, void>> likeVideo({required String videoId}) =>
      videoRepository.likeVideo(videoId: videoId);

  Future<Either<Failure, void>> removeLike({required String videoId}) =>
      videoRepository.removeLike(videoId: videoId);
}
