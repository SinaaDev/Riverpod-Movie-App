import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_movie_app/model/app_config.dart';

class HTTPServices {
  final dio = Dio();
  final locator = GetIt.instance;

  late String _base_url;
  late String _api_key;

  HTTPServices() {
    AppConfig config = locator<AppConfig>();
    _base_url = config.BASE_API_URL;
    _api_key = config.API_KEY;
  }

  Future<dynamic> get(String path, {Map<String, dynamic>? query}) async {
    try {
      String url = '$_base_url$path';
      Map<String, dynamic> query0 = {'api_key': _api_key, 'language': 'en-US'};
      if (query != null) {
        query0.addAll(query);
      }
      return await dio.get(url, queryParameters: query);
    } on DioException catch (e) {
      log('Unable to perform get request $e');
    }
  }
}
