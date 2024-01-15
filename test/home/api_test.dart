import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:video_gozle/core/rest_api_urls.dart';
import 'package:video_gozle/features/home/data/datasources/remote.dart';
import 'package:video_gozle/injection.dart';

void main() async {
  test('test name', () async {
    final dio = Dio(
      BaseOptions(
        baseUrl: RestApiUrls.baseUrlV1,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );
    var home = HomeApiClient(dioNew: dio, dioV1: dio);
    var banners = await home.getBanners(language: 'en');
    expect(banners, isNotEmpty);
  });
}
