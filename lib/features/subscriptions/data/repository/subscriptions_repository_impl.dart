import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/exception/exception.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/subscriptions/data/data_source/subscriptions_api_client.dart';
import 'package:video_gozle/features/subscriptions/domain/use_cases/subscriptions_repository.dart';

class SubscriptionsRepositoryImpl extends SubscriptionsRepository {
  SubscriptionsRepositoryImpl({required this.subscriptionsApiClient});

  final SubscriptionsApiClient subscriptionsApiClient;

  @override
  Future<Either<Failure, List<Video>>> getTodaysVideos({required int page, required int amount}) async {
    try {
      final videoList = await subscriptionsApiClient.getTodaysVideos(
        amount: amount,
        page: page,
      );
      return right(videoList);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, List<Video>>> getAllVideos({required int page, required int amount}) async {
    try {
      final videoList = await subscriptionsApiClient.getAllVideos(
        amount: amount,
        page: page,
      );
      return right(videoList);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, List<Video>>> getNotViewedVideos({required int page, required int amount}) async {
    try {
      final videoList = await subscriptionsApiClient.getNotViewedVideos(
        amount: amount,
        page: page,
      );
      return right(videoList);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, List<Channel>>> getSubscribedChannels(
      {required int page, required int amount}) async {
    try {
      final channelList = await subscriptionsApiClient.getSubscribedChannels(
        amount: amount,
        page: page,
      );
      return right(channelList);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, List<Video>>> getVideosByChannel(
      {required int page, required int amount, required String channelId}) async {
    try {
      final videoList = await subscriptionsApiClient.getVideosByChannel(
        amount: amount,
        page: page,
        channelId: channelId,
      );
      return right(videoList);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, List<Channel>>> getPopularChannels({required int page, required int amount}) async {
    try {
      final channelList = await subscriptionsApiClient.getPopularChannels(
        amount: amount,
        page: page,
      );
      return right(channelList);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }
}
