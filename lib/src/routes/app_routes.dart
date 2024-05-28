import 'package:delivery_app/src/screens/home_screen.dart';
import 'package:delivery_app/src/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get routes {
    return {
      '/': (context) => const SplashScreen(),
      '/home': (context) => const HomeScreen(),
    };
  }
}
