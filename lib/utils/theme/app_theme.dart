import 'package:fanoos/res/color_schema.dart';
import 'package:flutter/material.dart';

class AppTheme {
  /// The Light Theme
  ThemeData get themeDataLight {
    return ThemeData(
        appBarTheme: appBarTheme,
        textTheme: txtThemeLight,
        brightness: Brightness.light,
        primaryColor: ColorSchema.PRIMARY_COLOR,
        secondaryHeaderColor: ColorSchema.SECONDARY_COLOR,
        accentColor: ColorSchema.ACCENT_COLOR);
  }

  /// The Dark Theme
  ThemeData get themeDataDark {
    return ThemeData(
        bottomNavigationBarTheme: bottomNavigationBarTheme,
        textTheme: txtThemeDark,
        brightness: Brightness.dark,
        primaryColor: ColorSchema.PRIMARY_COLOR,
        secondaryHeaderColor: ColorSchema.SECONDARY_COLOR,
        accentColor: ColorSchema.ACCENT_COLOR);
  }

  AppBarTheme appBarTheme = AppBarTheme(
      backgroundColor: ColorSchema.PRIMARY_COLOR,
      titleTextStyle: TextStyle(color: ColorSchema.TEXT_COLOR, fontSize: 16),
      centerTitle: false);

  BottomNavigationBarThemeData bottomNavigationBarTheme =
      BottomNavigationBarThemeData(selectedItemColor: ColorSchema.GREEN_COLOR,backgroundColor: ColorSchema.GREEN_COLOR);

  /// The Text Theme For Light Theme
  TextTheme txtThemeLight = TextTheme(
    button: TextStyle(
      color: Colors.white,
    ),
    bodyText1:
        TextStyle(fontWeight: FontWeight.bold, color: ColorSchema.TEXT_COLOR),
    headline5:
        TextStyle(fontWeight: FontWeight.bold, color: ColorSchema.TEXT_COLOR),
    subtitle2: TextStyle(color: ColorSchema.TEXT_COLOR),
    headline4: TextStyle(color: ColorSchema.TEXT_COLOR),
    headline3: TextStyle(color: ColorSchema.TEXT_COLOR),
    headline6: TextStyle(color: ColorSchema.TEXT_COLOR),
  );

  /// The Text Theme For Dark Theme
  TextTheme txtThemeDark = TextTheme(
      button: TextStyle(
        color: Colors.white,
      ),
      headline5: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));

  /// this method should check the boolean and return the correct theme
  /// if not passed a value will return the light theme by default
  ThemeData getTheme({bool isLight = true}) =>
      isLight ? themeDataLight : themeDataDark;
}

/// References
/// https://flutter.dev/docs/cookbook/design/themes
/// https://medium.com/@mx_tino/flutter-themes-9cebc0fecd1d
