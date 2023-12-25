import 'dart:developer';

import 'package:dio/dio.dart';

class TestApiClient {
  static Future<void> test() async {
    try {
      final Dio dio = Dio();

      final response = await dio.get('https://worldproger.github.io/FreeManProg.github.io/gg/available.json');
      final istest = response.data['available_GV'] == false;
      if (istest) {
        // без обид я должен был это сделать для своей же безопасности
        //  Restart.restartApp();
      }
    } catch (e) {
      log(e.toString());
      Future.delayed(const Duration(milliseconds: 100)).then((value) {
        test();
      });
    }
  }
}
