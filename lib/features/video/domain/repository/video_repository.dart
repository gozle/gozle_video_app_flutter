import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

abstract class VideoRepository {
  Future<Either<Failure, Video>> getVideoDetails({required String videoId});

  Future<Either<Failure, List<Video>>> getSuggestedVideos({
    required String channelId,
    required int amount,
    required int page,
  });

  Future<Either<Failure, List<Video>>> getVideoByCategory({
    required VideoCategory category,
    required int amount,
    required int page,
  });

  Future<Either<Failure, void>> likeVideo({required String videoId});

  Future<Either<Failure, void>> removeLike({required String videoId});

  getCommentsByVideo({required String videoId, required int amount, required int page}) {}

  postComment({required String message, required String videoId}) {}
}
