import 'package:bike_app/core/routes/app_routes.dart';
import 'package:bike_app/core/routes/generate_routes.dart';
import 'package:bike_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.main,
      onGenerateRoute: GenerateRoute().generate,
      theme: AppTheme().getTheme(),
    );
  }
}
