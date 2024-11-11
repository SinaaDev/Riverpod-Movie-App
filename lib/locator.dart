import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_movie_app/model/app_config.dart';

final locator = GetIt.instance;

Future setupLocator() async {
  final configFile = await rootBundle.loadString('assets/config/main.json');
  final configData = jsonDecode(configFile);

  locator.registerSingleton<AppConfig>(
    AppConfig(
      configData['BASE_API_URL'],
      configData['BASE_IMAGE_API_URL'],
      configData['API_KEY'],
    ),
  );
}
