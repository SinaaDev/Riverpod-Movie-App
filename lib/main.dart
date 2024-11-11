import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_movie_app/screens/home_screen.dart';
import 'package:riverpod_movie_app/screens/splash_screen.dart';

void main() {
  runApp(SplashScreen(onInitializationComplete: () {
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flicked",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
      },
    );
  }
}
