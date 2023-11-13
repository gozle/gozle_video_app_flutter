import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/subscriptions/domain/use_cases/subscriptions_repository.dart';

class SubscriptionsUseCases {
  final SubscriptionsRepository subscriptionsRepository;

  SubscriptionsUseCases({required this.subscriptionsRepository});

  Future<Either<Failure, List<Channel>>> getSubscribedChannels({
    required int page,
    required int amount,
  }) async {
    return subscriptionsRepository.getSubscribedChannels(page: page, amount: amount);
  }

  Future<Either<Failure, List<Channel>>> getPopularChannels({
    required int page,
    required int amount,
  }) async {
    return subscriptionsRepository.getPopularChannels(page: page, amount: amount);
  }

  Future<Either<Failure, List<Video>>> getVideosByChannel({
    required String channelId,
    required int page,
    required int amount,
  }) {
    return subscriptionsRepository.getVideosByChannel(page: page, amount: amount, channelId: channelId);
  }

  Future<Either<Failure, List<Video>>> getAllVideos({
    required int page,
    required int amount,
  }) {
    return subscriptionsRepository.getAllVideos(page: page, amount: amount);
  }

  Future<Either<Failure, List<Video>>> getNotViewedVideos({
    required int page,
    required int amount,
  }) {
    return subscriptionsRepository.getNotViewedVideos(page: page, amount: amount);
  }

  Future<Either<Failure, List<Video>>> getTodaysVideos({
    required int page,
    required int amount,
  }) {
    return subscriptionsRepository.getTodaysVideos(page: page, amount: amount);
  }
}
