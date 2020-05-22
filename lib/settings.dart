import 'package:arkona_development/Infrastructure/Styles/defaultStyle.dart';
import 'package:flutter/material.dart';

class Settings {
  static String currentApp = TypeApp.PowerApps;

  static ThemeData getThemeApp() {
    return AppStyle.getTheme(currentApp);
  }
}
