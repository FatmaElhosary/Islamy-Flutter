import 'package:flutter/material.dart';
import 'package:islamy/app_bar.dart';

import '../taps/hadeth_tab/hadeth_view.dart';
import '../taps/quran_tab/quran_view.dart';
import '../taps/radio_tab/radio_view.dart';
import '../taps/sebha_tab/sebha_view.dart';
import '../taps/settings-tab/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> taps = [
    RadioView(),
    SebhaView(),
    HadethView(),
    QuranView(),
    Settings()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
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
          destinations: const [
            NavigationDestination(
              icon: ImageIcon(
                AssetImage('assets/images/radio_icon.png'),
              ),
              label: 'radio',
            ),
            NavigationDestination(
              icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
              label: 'sebha',
            ),
            NavigationDestination(
              icon: ImageIcon(AssetImage('assets/images/hadeth_icon.png')),
              label: 'hadeth',
            ),
            NavigationDestination(
              icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
              label: 'quran',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'settings',
            ),
          ],
        ),
      ),
    );
  }
}
/* bottomNavigationBar: BottomNavigationBar(
          currentIndex:_selectedIndex ,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/radio_icon.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/hadeth_icon.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
              label: '',
            ),

          ],
          type: BottomNavigationBarType.fixed,
          onTap:_onItemTapped ,
        ),*/
