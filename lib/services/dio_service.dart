import 'dart:developer';

import 'package:dio/dio.dart';

class DioService {
  Dio dio = Dio();
  Future<dynamic> getMethod(String url) async {
    return await dio.get(url, options: Options(method: 'GET')).then((response) {
      log(response.toString());
      return response;
    }).catchError((error) {
      log(error.toString());
      return error;
    });
  }
}
