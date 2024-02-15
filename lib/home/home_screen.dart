import 'package:flutter/material.dart';
import 'package:islamy/app_bar.dart';
import 'package:islamy/packages/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import '../taps/hadeth_tab/hadeth_view.dart';
import '../taps/quran_tab/quran_view.dart';
import '../taps/radio_tab/radio_view.dart';
import '../taps/sebha_tab/sebha_view.dart';
import '../taps/settings-tab/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> taps = [
    const RadioView(),
   const  SebhaView(),
    const HadethView(),
    QuranView(),
    const Settings()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Provider.of<SettingsProvider>(context).bgImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: const GlobalAppBar(),
        body: taps[_selectedIndex],
        bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: _onItemTapped,
          selectedIndex: _selectedIndex,
          destinations: [
            NavigationDestination(
              icon: const ImageIcon(
                AssetImage('assets/images/radio_icon.png'),
              ),
              label: AppLocalizations.of(context)!.radio,
            ),
            NavigationDestination(
              icon: const ImageIcon(AssetImage('assets/images/sebha_icon.png')),
              label: AppLocalizations.of(context)!.sebha,
            ),
            NavigationDestination(
              icon:
                  const ImageIcon(AssetImage('assets/images/hadeth_icon.png')),
              label: AppLocalizations.of(context)!.hadeth,
            ),
            NavigationDestination(
              icon: const ImageIcon(AssetImage('assets/images/quran_icon.png')),
              label: AppLocalizations.of(context)!.quran,
            ),
            NavigationDestination(
              icon: const Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settings,
            ),
          ],
        ),
      ),
    );
  }
}
