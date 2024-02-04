import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xFF242424);
  static Color lightWhite = Color(0xFFF8F8F8);
  static Color primary = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primary,
      /*   colorScheme: ColorScheme.fromSeed(
        surface: primary,
        secondaryContainer: Colors.transparent,
        primary: primary,
        seedColor: Colors.red,
        onPrimary: blackColor,
        secondary: lightWhite,
      ),*/
      textTheme: TextTheme(
          headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: 'El Messiri',
        color: blackColor,
      )),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        //titleTextStyle: textTheme.headlineLarge,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
