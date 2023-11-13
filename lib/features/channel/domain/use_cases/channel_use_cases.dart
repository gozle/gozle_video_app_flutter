import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/channel/domain/repository/channel_repository.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

class ChannelUseCases {
  final ChannelRepository channelRepository;

  ChannelUseCases({required this.channelRepository});

  Future<Either<Failure, Channel>> getChannelDetails({required String channelId}) async {
    return await channelRepository.getChannelDetails(channelId: channelId);
  }

  Future<Either<Failure, void>> subscribe({required String channelId}) async {
    return await channelRepository.subscribe(channelId: channelId);
  }

  Future<Either<Failure, void>> unsubscribe({required String channelId}) async {
    return await channelRepository.unsubscribe(channelId: channelId);
  }

  Future<Either<Failure, List<Video>>> getPopularVideos({
    required String channelId,
    required int amount,
    required int page,
  }) async {
    return await channelRepository.getPopularVideos(
      channelId: channelId,
      amount: amount,
      page: page,
    );
  }

  Future<Either<Failure, List<Video>>> getLatestVideos({
    required String channelId,
    required int amount,
    required int page,
  }) async {
    return await channelRepository.getLatestVideos(
      channelId: channelId,
      amount: amount,
      page: page,
    );
  }

  Future<Either<Failure, List<Video>>> getOldestVideos({
    required String channelId,
    required int amount,
    required int page,
  }) async {
    return await channelRepository.getOldestVideos(
      channelId: channelId,
      amount: amount,
      page: page,
    );
  }
}
