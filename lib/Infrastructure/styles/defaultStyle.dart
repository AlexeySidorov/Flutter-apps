import 'package:arkona_development/Infrastructure/styles/color.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static ThemeData getTheme(String type) {
    switch (type) {
      case TypeApp.PowerApps:
        return getPowerAppTheme();
      default:
        return ThemeData(
            primarySwatch: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity);
    }
  }
}

ThemeData getPowerAppTheme() {
  return ThemeData(
      primaryColor: ThemeMobileColor.primaryColor,
      buttonTheme: ButtonThemeData(
          buttonColor: ThemeMobileColor.orangeButtonBackground,
          
          textTheme: ButtonTextTheme.accent));
}

class TypeApp {
  static const String PowerApps = "power";
  static const String BSService = "beauty";
  static const String App = "app";
}

class StyleApp {
  static int dark = 0;
  static int light = 1;
}
