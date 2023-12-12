import 'package:dio/dio.dart';
import 'package:video_gozle/core/exception/exception_utils.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart';

class HomeApiClient {
  final Dio dio;
  final Dio dioV1;

  HomeApiClient({
    required this.dio,
    required this.dioV1,
  });

  Future<List<VideoCategory>> getVideoCategories() async {
    try {
      final response = await dio.get(
        '/category',
      );

      if (response.statusCode == 200) {
        final List<VideoCategory> categories = [];
        final jsonList = response.data as List<dynamic>;
        for (var categoryJson in jsonList) {
          categories.add(VideoCategory.fromJson(categoryJson));
        }
        return categories;
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

  Future<List<Video>> getPopularVideos({
    required int time,
    required int amount,
    required int page,
  }) async {
    try {
      const url = "/popular";

      final response = await dio.get(url, queryParameters: {
        "time": time,
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

  Future<List<Video>> getLatestVideos({
    required int amount,
    required int page,
  }) async {
    try {
      const url = "/laters";

      final response = await dio.get(url, queryParameters: {
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

  Future<List<Banner>> getBanners({
    required String language,
    required int amount,
    required int page,
  }) async {
    try {
      const url = "/banner";

      final response = await dioV1.get(url, queryParameters: {
        "page": page,
        "page_size": amount,
        "language": language,
      });

      if (response.statusCode == 200) {
        final videoJsonList = response.data.results as List<dynamic>;
        return videoJsonList
            .map((videoJson) => Banner.fromJson(videoJson))
            .toList();
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }
}
