import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

abstract class ChannelRepository {
  Future<Either<Failure, Channel>> getChannelDetails({required String channelId});

  Future<Either<Failure, void>> unsubscribe({required String channelId});

  Future<Either<Failure, void>> subscribe({required String channelId});

  Future<Either<Failure, List<Video>>> getPopularVideos(
      {required String channelId, required int amount, required int page});

  Future<Either<Failure, List<Video>>> getLatestVideos(
      {required String channelId, required int amount, required int page});

  Future<Either<Failure, List<Video>>> getOldestVideos(
      {required String channelId, required int amount, required int page});
}
