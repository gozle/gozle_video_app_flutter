import 'package:dio/dio.dart';
import 'package:video_gozle/core/exception/exception_utils.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

class SubscriptionsApiClient {
  final Dio dio;

  SubscriptionsApiClient({required this.dio});

  Future<List<Channel>> getSubscribedChannels({
    required int amount,
    required int page,
  }) async {
    try {
      const url = "/subscribers";

      final response = await dio.get(
        url,
        queryParameters: {
          "page": page,
          "amount": amount,
        },
      );
      if (response.statusCode == 200) {
        final channelJsonList = response.data as List<dynamic>;
        return channelJsonList.map((videoJson) => Channel.fromJson(videoJson)).toList();
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<List<Video>> getAllVideos({
    required int amount,
    required int page,
  }) async {
    try {
      final url = "/video-by-channel/";

      final response = await dio.get(
        url,
        queryParameters: {
          "page": page,
          "amount": amount,
          "order": 'desc',
          "sort": 'date',
        },
      );
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

  Future<List<Video>> getTodaysVideos({
    required int amount,
    required int page,
  }) async {
    try {
      final url = "/video-by-channel/";

      final response = await dio.get(
        url,
        queryParameters: {
          "page": page,
          "amount": amount,
          "order": 'desc',
          "sort": 'date',
        },
      );
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

  Future<List<Video>> getNotViewedVideos({
    required int amount,
    required int page,
  }) async {
    try {
      final url = "/video-by-channel/";

      final response = await dio.get(
        url,
        queryParameters: {
          "page": page,
          "amount": amount,
          "order": 'desc',
          "sort": 'date',
        },
      );
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

  Future<List<Video>> getVideosByChannel(
      {required int amount, required int page, required String channelId}) async {
    try {
      final url = "/video-by-channel/$channelId";

      final response = await dio.get(
        url,
        queryParameters: {
          "pk": channelId,
          "page": page,
          "amount": amount,
          "order": 'desc',
          "sort": 'date',
        },
      );
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

  Future<List<Channel>> getPopularChannels({required int amount, required int page}) async {
    try {
      const url = "/channels";

      final response = await dio.get(
        url,
        queryParameters: {
          "page": page,
          "amount": amount,
        },
      );
      if (response.statusCode == 200) {
        final channelJsonList = response.data as List<dynamic>;
        return channelJsonList.map((videoJson) => Channel.fromJson(videoJson)).toList();
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }
}
