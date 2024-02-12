import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = const Color(0xFF242424);
  static Color lightWhite = const Color(0xFFF8F8F8);
  static Color primary = const Color(0xFFB7935F);
  static Color primaryAlpha = const Color(0xFFB7935F).withOpacity(.6);
  static Color goldColor = const Color(0xFFFACC1D);
  static Color blueColor = const Color(0xff141A2E);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primary,
      colorScheme: ColorScheme.fromSeed(
        /*    surface: primary,
        secondaryContainer: Colors.transparent,
        primary: primary,
        seedColor: primary,
        onPrimary: blackColor,
        secondary: lightWhite, */
        //////////////////// switch////
        outline: primary,
        onPrimary: blackColor,
        seedColor: primary,
        secondary: lightWhite,
        onSecondary: primary,
        primary: primaryAlpha,
        background: lightWhite,
      ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: lightWhite),
      switchTheme: const SwitchThemeData(),
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
            return IconThemeData(
              color: lightWhite,
            );
          }
        }),
      ));

  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        primary: blueColor,
        onPrimary: goldColor,
        outline: primary,
        seedColor: primary,
        onSecondary: goldColor,
        background: blueColor,
      ),
      iconTheme: IconThemeData(color: goldColor),
      primaryColor: blueColor,
      textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'El Messiri',
            color: lightWhite,
          ),
          headlineSmall: TextStyle(
            fontSize: 25,
            color: lightWhite,
            fontFamily: 'El Messiri',
            fontWeight: FontWeight.w600,
          ),
          labelLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Monotype Koufi',
            color: lightWhite,
          ),
          labelMedium: TextStyle(
            fontFamily: 'DecoType Thuluth',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: goldColor,
            height: 2,
          )),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: goldColor),
      appBarTheme: AppBarTheme(
        foregroundColor: lightWhite,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: blueColor,
        indicatorColor: Colors.transparent,
        labelTextStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.w400, fontSize: 12, color: goldColor)),
        iconTheme: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return IconThemeData(
              color: goldColor,
            );
          } else {
            return IconThemeData(
              color: lightWhite,
            );
          }
        }),
      ));
}
