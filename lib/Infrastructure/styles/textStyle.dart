import 'package:arkona_development/Infrastructure/styles/color.dart';
import 'package:flutter/material.dart';

class TextAppStyle {
  static TextStyle getToolbarTitleStyle(bool isPrimary) {
    if (isPrimary)
      return TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          color: ThemeMobileColor.primaryTextColor);
    else
      return TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: ThemeMobileColor.primaryTextColor);
  }

  static TextStyle getToolbarSubTitleStyle(bool isPrimary) {
    if (isPrimary)
      return TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          color: ThemeMobileColor.primarySubTextColor);
    else
      return TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: ThemeMobileColor.primarySubTextColor);
  }

  static TextStyle getMenuTextStyle() {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        color: ThemeMobileColor.primaryTextColor);
  }

  static TextStyle getWebMenuText16BoldStyle() {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        color: ThemeWebColor.primaryTextColor);
  }

  static TextStyle getWebMenuText14BoldStyle() {
    return TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        color: ThemeWebColor.primaryTextColor);
  }

  static TextStyle getText15ColorWhiteStyle() {
    return TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        color: DefaultThemeColors.white);
  }

  static TextStyle getText14ColorWhiteStyle() {
    return TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        color: DefaultThemeColors.white);
  }

  static TextStyle getTitleText16ColorStyle() {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        color: DefaultThemeColors.titleTextColor);
  }

  static TextStyle getSubTitleText14ColorStyle() {
    return TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        color: DefaultThemeColors.subTitleTextColor);
  }

  static TextStyle getText14ColorBlackStyle() {
    return TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        color: Colors.black);
  }

  static TextStyle getText12ColorBlackStyle() {
    return TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        color: Colors.black);
  }
}
