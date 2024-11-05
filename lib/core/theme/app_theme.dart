import 'package:bike_app/core/setting/app_setting.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    return ThemeData(
      fontFamily: AppSetting.fontFamily,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
      ),
      useMaterial3: true,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      canvasColor: Colors.transparent,
    );
  }
}
