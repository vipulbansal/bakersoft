import 'package:bakersoft/utils/custom_colors.dart';
import 'package:bakersoft/utils/custom_route.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      fontFamily: "montserrat",
      primaryColor: CustomColors.colorPrimary,
      colorScheme: _customColorScheme,
      popupMenuTheme: PopupMenuThemeData(
        color: CustomColors.colorLight,
      ),
      backgroundColor: CustomColors.colorLight,
      brightness: Brightness.light,
      cardTheme: CardTheme(
        color: CustomColors.colorWhite,
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
          color: CustomColors.colorBlack,
        ),
      ),
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CustomPageTransitionBuilder(),
          TargetPlatform.iOS: CustomPageTransitionBuilder(),
        },
      ),
    );
  }

  static final ColorScheme _customColorScheme = ColorScheme(
    primary: CustomColors.colorPrimary,
    secondary: Colors.amber,
    surface: Colors.purpleAccent,
    background: CustomColors.colorLight,
    error: CustomColors.colorRed,
    onPrimary: CustomColors.colorWhite,
    onSecondary: Colors.black,
    onSurface: CustomColors.colorRed,
    onBackground: Colors.white,
    onError: Colors.redAccent,
    brightness: Brightness.light,
  );
}
