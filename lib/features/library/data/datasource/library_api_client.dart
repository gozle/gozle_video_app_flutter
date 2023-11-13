import 'package:dio/dio.dart';
import 'package:video_gozle/core/exception/exception_utils.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

class LibraryApiClient {
  final Dio dio;

  LibraryApiClient({required this.dio});

  Future<List<Video>> getVideosHistory({
    required int page,
    required int amount,
  }) async {
    try {
      final response = await dio.get('/history', queryParameters: {
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
}
