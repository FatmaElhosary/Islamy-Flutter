import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  String appLanguage = 'ar';
  ThemeMode appTheme = ThemeMode.dark;
  String get bgImage => appTheme == ThemeMode.light
      ? 'assets/images/background.png'
      : 'assets/images/darkback.png';
  String get sebhaImg => appTheme == ThemeMode.light
      ? 'assets/images/sebha.png'
      : "assets/images/sebha_dark.png";

  String get playImg => appTheme == ThemeMode.light
      ? 'assets/images/Icon awesome-play-circle.png'
      : "assets/images/play_dark.png";
  void changeLanguage(String selectedLanguage) {
    if (appLanguage == selectedLanguage) return;
    appLanguage = selectedLanguage;
    notifyListeners();
  }

  void changeAppTheme(ThemeMode selectedTheme) {
    if (appTheme == selectedTheme) return;
    appTheme = selectedTheme;
    notifyListeners();
  }
}
