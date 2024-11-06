import 'package:bike_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import '../../views/main/model/product_model.dart';
import '../../views/main/pages/main_page.dart';
import '../../views/product/pages/product_screen.dart';

class GenerateRoute {
  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.main:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const MainScreen(),
        );
      case AppRoutes.product:
        ProductModel product = settings.arguments as ProductModel;
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => ProductScreen(product: product),
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );
      default:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const MainScreen(),
        );
    }
  }
}
