import 'package:flutter/material.dart';
import 'package:riverpod_movie_app/screens/splash_screen.dart';

void main() {
  runApp(SplashScreen(onInitializationComplete: (){}));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}
