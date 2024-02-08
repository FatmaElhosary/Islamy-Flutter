import 'package:flutter/material.dart';
import 'package:islamy/home/home_screen.dart';
import 'package:islamy/my_theme.dart';
import 'package:islamy/screens/hadeth_details.dart';
import 'package:islamy/screens/soura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SouraDetails.routeName:(_)=> const SouraDetails(),
        HadethDetails.routeName:(_)=>const HadethDetails(),

      },
    );
  }
}
