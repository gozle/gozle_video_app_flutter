import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/exception/exception.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/video/data/datasource/local.dart';
import 'package:video_gozle/features/video/data/datasource/video_api_client.dart';
import 'package:video_gozle/features/video/domain/model/comment_model.dart';
import 'package:video_gozle/features/video/domain/model/video_ads_model.dart';
import 'package:video_gozle/features/video/domain/repository/video_repository.dart';

class VideoRepositoryImpl implements VideoRepository {
  final VideoApiClient videoApiClient;
  final AdsStorage adsStorage;
  VideoRepositoryImpl({required this.videoApiClient, required this.adsStorage});

  @override
  Future<Either<Failure, Video>> getVideoDetails({
    required String videoId,
  }) async {
    try {
      final videoDetails = await videoApiClient.getVideoDetails(
        videoId: videoId,
      );
      return right(videoDetails);
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
  Future<Either<Failure, VideoAdsModel>> getVideoAd() async {
    try {
      final videoAd = await videoApiClient.getVideoAd();
      return right(videoAd);
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
  Future<Either<Failure, List<Video>>> getSuggestedVideos({
    required String channelId,
    required int amount,
    required int page,
  }) async {
    try {
      final videoList = await videoApiClient.getSuggestedVideos(
        channelId: channelId,
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
  Future<Either<Failure, List<Video>>> getVideoByCategory({
    required VideoCategory category,
    required int amount,
    required int page,
  }) async {
    try {
      final videoList = await videoApiClient.getVideosByCategory(
        pk: category.pk!,
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
  Future<Either<Failure, void>> likeVideo({required String videoId}) async {
    try {
      await videoApiClient.likeVideo(videoId: videoId);
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
  Future<Either<Failure, void>> removeLike({required String videoId}) async {
    try {
      await videoApiClient.removeLike(videoId: videoId);
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
  Future<Either<Failure, List<Comment>>> getCommentsByVideo({
    required String videoId,
    required int amount,
    required int page,
  }) async {
    try {
      final commentList = await videoApiClient.getVideoComments(videoId: videoId);
      return right(commentList);
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
  Future<Either<Failure, void>> postComment({
    required String message,
    required String videoId,
  }) async {
    try {
      await videoApiClient.postComment(videoId: videoId, message: message);
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
  DateTime? getAdsLastView() {
    return adsStorage.readLastAdTime();
  }

  @override
  Future<Either<Failure, void>> updateAdsLastView() async {
    try {
      await adsStorage.writeLastAdTime(date: DateTime.now());
      return right(null);
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }
}
