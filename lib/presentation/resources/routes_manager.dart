import 'package:flutter/material.dart';
import 'package:prashant_food/presentation/dashboard/dashboard_screen.dart';
import 'package:prashant_food/presentation/dashboard/home/home_tab.dart';
import 'package:prashant_food/presentation/splash/splash_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
 
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(''),
              ),
              body: const Center(child: Text('')),
            ));
  }
}
