import 'package:bike_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import '../../views/main/pages/main_page.dart';

class GenerateRoute {
  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.main:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const MainScreen(),
        );
      default:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const MainScreen(),
        );
    }
  }
}
