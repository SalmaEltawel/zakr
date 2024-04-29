import 'package:flutter/material.dart';
import 'package:zakr/features/home/details/sura_details.dart';
import 'package:zakr/features/home/screens/home_screen.dart';
import 'package:zakr/features/home/screens/splash_screen.dart';
import 'package:zakr/models/sura_model.dart';

class RoutesName {
  static const String splash = "/";
  static const String home = "homeScreen";
  static const String sura = "suraDetails";

}

class RoutesApp {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case RoutesName.sura:
        return MaterialPageRoute(
          builder: (context) => SuraDetails(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => noRoute(),
        );
    }
  }

  static Widget noRoute() {
    return const Scaffold(
      body: Center(child: Text("No Routes")),
    );
  }
}
