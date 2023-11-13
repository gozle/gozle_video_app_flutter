import 'package:dio/dio.dart';
import 'package:video_gozle/core/exception/exception_utils.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

class SearchApiClient {
  final Dio dio;

  SearchApiClient({required this.dio});

  Future<List<Video>> getVideoByQuery({
    required String query,
    required int page,
    required int amount,
  }) async {
    try {
      const url = "/search";
      final response = await dio.get(url, queryParameters: {
        "q": query,
        "page": page,
        "amount": amount,
      });
      if (response.statusCode == 200) {
        if ('${response.data}' == '{}') return [];

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
