import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider with ChangeNotifier {
  // Obtain shared preferences.
  String appLanguage = 'en';
  ThemeMode appTheme = ThemeMode.light;
  String get appLang => appLanguage;
  ThemeMode get apTheme => appTheme;

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
    if (appLang == selectedLanguage) return;
    appLanguage = selectedLanguage;
    setSharedPreferenceLanguage();
    notifyListeners();
  }

  void changeAppTheme(ThemeMode selectedTheme) {
    appTheme = selectedTheme;
    setSharedPreferenceTheme();
    notifyListeners();
  }

//final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<void> setSharedPreferenceTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Save an String value to 'appLanguage' key.
    prefs.setBool('darkTheme', appTheme == ThemeMode.dark);
  }

  Future<void> setSharedPreferenceLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Save an String value to 'appLanguage' key.
    prefs.setString('appLanguage', appLanguage);
  }

  //initial theeme and lang
  void initialize() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    appTheme =
        prefs.getBool('darkTheme') == true ? ThemeMode.dark : ThemeMode.light;
    appLanguage = prefs.getString('appLanguage') ?? 'en';
    notifyListeners();
  }
}
