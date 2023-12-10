import 'package:dio/dio.dart';
import 'package:video_gozle/core/exception/exception.dart';
import 'package:video_gozle/core/exception/exception_utils.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/video/domain/model/comment_model.dart';
import 'package:video_gozle/features/video/domain/model/video_ads_model.dart';

class VideoApiClient {
  final Dio dio;
  final Dio dioV1;

  VideoApiClient({
    required this.dio,
    required this.dioV1,
  });

  Future<Video> getVideoDetails({required String videoId}) async {
    try {
      final response = await dio.get(
        '/video/$videoId',
      );

      if (response.statusCode == 200) {
        return Video.fromJson(response.data);
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<VideoAdsModel> getVideoAd() async {
    try {
      final response = await dioV1.get('/video?language=en');

      if (response.statusCode == 200 && response.data['results'] != null) {
        List results = response.data['results'];
        if (results.isNotEmpty) {
          return VideoAdsModel.fromMap(results.first);
        }
        throw UnexpectedException();
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<List<Video>> getSuggestedVideos({
    required String channelId,
    required int amount,
    required int page,
  }) async {
    try {
      final url = "/video-by-channel/$channelId";
      final response = await dio.get(url, queryParameters: {
        "page": page,
        "amount": amount,
        "sort": "date",
        "order": "asc",
      });
      if (response.statusCode == 200) {
        final videoJsonList = response.data as List<dynamic>;
        return videoJsonList
            .map((videoJson) => Video.fromJson(videoJson))
            .toList();
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<List<Video>> getVideosByCategory({
    required int pk,
    required int amount,
    required int page,
  }) async {
    try {
      const url = "/video-by-category";
      final response = await dio.get(url, queryParameters: {
        "pk": pk,
        "page": page,
        "amount": amount,
      });
      if (response.statusCode == 200) {
        final videoJsonList = response.data as List<dynamic>;
        return videoJsonList
            .map((videoJson) => Video.fromJson(videoJson))
            .toList();
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<void> likeVideo({
    required String videoId,
  }) async {
    try {
      const url = "/like";
      final response = await dio.post(
        url,
        data: {
          "video_id": videoId,
        },
      );
      if (response.statusCode == 200) {
        return;
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<void> removeLike({required String videoId}) async {
    try {
      const url = "/like";
      final response = await dio.delete(
        url,
        data: {
          "video_id": videoId,
        },
      );
      if (response.statusCode == 200) {
        return;
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<List<Comment>> getVideoComments({required String videoId}) async {
    return [];
  }

  Future<List<void>> postComment({
    required String videoId,
    required String message,
  }) async {
    return [];
  }
}
