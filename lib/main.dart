import 'package:flutter/material.dart';
import 'package:islamy/home/home_screen.dart';
import 'package:islamy/my_theme.dart';
import 'package:islamy/packages/providers/settings_provider.dart';
import 'package:islamy/screens/hadeth_details.dart';
import 'package:islamy/screens/soura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider()..initialize(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: settingsProvider.apTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsProvider.appLanguage),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SouraDetails.routeName: (_) => const SouraDetails(),
        HadethDetails.routeName: (_) => const HadethDetails(),
      },
    );
  }
}
