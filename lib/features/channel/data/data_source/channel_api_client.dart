import 'package:dio/dio.dart';
import 'package:video_gozle/core/exception/exception_utils.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

class ChannelApiClient {
  final Dio dio;

  ChannelApiClient({required this.dio});

  Future<Channel> getChannelDetails({required String channelId}) async {
    try {
      final response = await dio.get(
        '/channel',
        queryParameters: {"pk": channelId},
      );
      if (response.statusCode == 200) {
        return Channel.fromJson(response.data);
      } else {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      }
    } on DioException catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    }
  }

  Future<void> unsubscribe({required String channelId}) async {
    try {
      final response = await dio.get(
        '/subscribers',
        queryParameters: {"channel_id": channelId, "action": "unsubscribe"},
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

  Future<void> subscribe({required String channelId}) async {
    try {
      final response = await dio.get(
        '/subscribers',
        queryParameters: {"channel_id": channelId, "action": "subscribe"},
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

  Future<List<Video>> getPopularVideos({
    required String channelId,
    required int amount,
    required int page,
  }) async {
    try {
      final url = "/video-by-channel/$channelId";

      final response = await dio.get(
        url,
        queryParameters: {
          "pk": channelId,
          "page": page,
          "amount": amount,
          "sort": 'view',
          "order": 'desc',
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

  Future<List<Video>> getOldestVideos({
    required String channelId,
    required int amount,
    required int page,
  }) async {
    try {
      final url = "/video-by-channel/$channelId";

      final response = await dio.get(
        url,
        queryParameters: {
          "pk": channelId,
          "page": page,
          "amount": amount,
          "order": 'asc',
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

  Future<List<Video>> getLatestVideos({
    required String channelId,
    required int amount,
    required int page,
  }) async {
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
}
