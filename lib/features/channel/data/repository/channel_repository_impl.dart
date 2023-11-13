import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/exception/exception.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/data/data_source/channel_api_client.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/channel/domain/repository/channel_repository.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

class ChannelRepositoryImpl extends ChannelRepository {
  ChannelRepositoryImpl({
    required this.channelApiClient,
  });

  final ChannelApiClient channelApiClient;

  @override
  Future<Either<Failure, Channel>> getChannelDetails({required String channelId}) async {
    try {
      final channel = await channelApiClient.getChannelDetails(channelId: channelId);
      return right(channel);
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
  Future<Either<Failure, void>> unsubscribe({required String channelId}) async {
    try {
      await channelApiClient.unsubscribe(channelId: channelId);
      return right(null);
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
  Future<Either<Failure, void>> subscribe({required String channelId}) async {
    try {
      await channelApiClient.subscribe(channelId: channelId);
      return right(null);
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
  Future<Either<Failure, List<Video>>> getLatestVideos(
      {required String channelId, required int amount, required int page}) async {
    try {
      final List<Video> videoList =
          await channelApiClient.getLatestVideos(channelId: channelId, amount: amount, page: page);
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
  Future<Either<Failure, List<Video>>> getOldestVideos(
      {required String channelId, required int amount, required int page}) async {
    try {
      final List<Video> videoList =
          await channelApiClient.getOldestVideos(channelId: channelId, amount: amount, page: page);
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
  Future<Either<Failure, List<Video>>> getPopularVideos(
      {required String channelId, required int amount, required int page}) async {
    try {
      final List<Video> videoList =
          await channelApiClient.getPopularVideos(channelId: channelId, amount: amount, page: page);
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
}
