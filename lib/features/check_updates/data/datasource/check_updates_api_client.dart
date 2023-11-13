import 'package:dio/dio.dart';
import 'package:video_gozle/features/check_updates/domain/models/update_info_model.dart';

class CheckUpdatesApiClient {
  final Dio dio;

  CheckUpdatesApiClient({required this.dio});

  Future<UpdateInfo> getUpdateInfo() async {
    final response = await dio.get('https://g-video-api.gozle.com.tm/notification/update-app.json');

    if (response.statusCode == 200) {
      return UpdateInfo.fromJson(response.data);
    } else {
      throw Exception("Failed to update info");
    }
  }
}
