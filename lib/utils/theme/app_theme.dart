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
        textTheme: txtThemeDark,
        brightness: Brightness.dark,
        primaryColor: ColorSchema.PRIMARY_COLOR,
        secondaryHeaderColor: ColorSchema.SECONDARY_COLOR,
        accentColor: ColorSchema.ACCENT_COLOR);
  }

  AppBarTheme appBarTheme = AppBarTheme(
      titleTextStyle: TextStyle(color: Color(0xFF21212B)), centerTitle: false);

  /// The Text Theme For Light Theme
  TextTheme txtThemeLight = TextTheme(
    button: TextStyle(
      color: Colors.white,
    ),
    bodyText1: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF21212B)),
    headline5: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF21212B)),
    subtitle2: TextStyle(color: Color(0xFF21212B)),
    headline4: TextStyle(color: Color(0xFF21212B)),
    headline3: TextStyle(color: Color(0xFF21212B)),
    headline6: TextStyle(color: Color(0xFF21212B)),
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
