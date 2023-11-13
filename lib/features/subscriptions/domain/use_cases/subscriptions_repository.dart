import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

abstract class SubscriptionsRepository {
  Future<Either<Failure, List<Channel>>> getSubscribedChannels({
    required int page,
    required int amount,
  });

  Future<Either<Failure, List<Video>>> getAllVideos({
    required int page,
    required int amount,
  });

  Future<Either<Failure, List<Video>>> getNotViewedVideos({
    required int page,
    required int amount,
  });

  Future<Either<Failure, List<Video>>> getTodaysVideos({
    required int page,
    required int amount,
  });

  Future<Either<Failure, List<Video>>> getVideosByChannel(
      {required int page, required int amount, required String channelId});

  Future<Either<Failure, List<Channel>>> getPopularChannels({required int page, required int amount});
}
