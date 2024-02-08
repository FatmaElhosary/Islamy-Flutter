import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = const Color(0xFF242424);
  static Color lightWhite = const Color(0xFFF8F8F8);
  static Color primary = const Color(0xFFB7935F);
  static Color primaryAlpha = const Color(0xFFB7935F).withOpacity(.6);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primary,

      /* colorScheme: ColorScheme.fromSeed(
        surface: primary,
        secondaryContainer: Colors.transparent,
        primary: primary,
        seedColor: Colors.red,
        onPrimary: blackColor,
        secondary: lightWhite,
      ),*/
      iconTheme: IconThemeData(color: primary),
      textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'El Messiri',
            color: blackColor,
          ),
          headlineSmall: TextStyle(
            fontSize: 25,
            color: blackColor,
            fontFamily: 'El Messiri',
            fontWeight: FontWeight.w600,
          ),
          labelLarge: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Monotype Koufi',
          ),
          labelMedium: TextStyle(
            fontFamily: 'DecoType Thuluth',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: blackColor,
            height: 2,
          )),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: blackColor,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: primary,
        indicatorColor: Colors.transparent,
        labelTextStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.w400, fontSize: 12, color: blackColor)),
        iconTheme: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return IconThemeData(
              color: blackColor,
            );
          } else {
            return const IconThemeData(
              color: Colors.white,
            );
          }
        }),
      ));

  static ThemeData darkTheme = ThemeData();
}
