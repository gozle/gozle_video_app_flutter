import 'package:dio/dio.dart';
import 'package:video_gozle/core/exception/exception_utils.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart';

import '../../domain/models/drawer_menu_category.dart';

class HomeApiClient {
  //TODO: if no need clear it
  // final Dio dio;
  final Dio dioNew;
  final Dio dioV1;

  HomeApiClient({
    //TODO: if no need clear it
    // required this.dio,
    required this.dioNew,
    required this.dioV1,
  });

  Future<List<VideoCategory>> getVideoCategories() async {
    try {
      final response = await dioNew.get(
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

  //TODO: if no need clear it
  // Future<List<DrawerMenuCategory>> getDrawerCategories() async {
  //   try {
  //     final response = await dio.get(
  //       '/icons',
  //     );
  //
  //     if (response.statusCode == 200) {
  //       final List<DrawerMenuCategory> categories = [];
  //       final jsonList = response.data as List<dynamic>;
  //       for (var categoryJson in jsonList) {
  //         categories.add(DrawerMenuCategory.fromJson(categoryJson));
  //       }
  //       return categories;
  //     } else {
  //       throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
  //     }
  //   } on DioException catch (e, stacktrace) {
  //     throw ExceptionUtils.dioErrorHandle(e, stacktrace);
  //   }
  // }

  Future<List<Video>> getVideosByCategory({
    required int pk,
    required int amount,
    required int page,
  }) async {
    try {
      const url = "/video-by-category";
      final response = await dioNew.get(url, queryParameters: {
        "pk": pk,
        "page": page,
        "amount": amount,
      });
      if (response.statusCode == 200) {
        final videoJsonList = response.data as List<dynamic>;
        return videoJsonList.map((videoJson) => Video.fromJson(videoJson)).toList();
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

      final response = await dioNew.get(url, queryParameters: {
        "time": time,
        "page": page,
        "amount": amount,
      });

      if (response.statusCode == 200) {
        final videoJsonList = response.data as List<dynamic>;
        return videoJsonList.map((videoJson) => Video.fromJson(videoJson)).toList();
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

      final response = await dioNew.get(url, queryParameters: {
        "page": page,
        "amount": amount,
      });

      if (response.statusCode == 200) {
        final videoJsonList = response.data as List<dynamic>;
        return videoJsonList.map((videoJson) => Video.fromJson(videoJson)).toList();
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<Banner> getBanners({required String language}) async {
    try {
      const url = "/banner/ads";

      final response = await dioV1.get(url, queryParameters: {
        "language": language,
      });

      if (response.statusCode == 200) {
        // final videoJsonList = response.data["results"] as List<dynamic>;
        return Banner.fromJson(response.data);
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }
}
