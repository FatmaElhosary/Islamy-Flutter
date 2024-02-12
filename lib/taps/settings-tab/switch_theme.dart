import 'package:flutter/material.dart';
import 'package:islamy/packages/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.light_mode);
      }
      return const Icon(Icons.dark_mode);
    },
  );
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Switch(
      /* activeColor: Theme.of(context).primaryColor,
      inactiveThumbColor: Colors.black,
      inactiveTrackColor: Colors.white, */
      /*    trackColor: MaterialStateProperty.resolveWith((state) {
        if (State != MaterialState.pressed) {
          return Colors.red;
        }
      }
         
          ), */
      inactiveTrackColor: Theme.of(context).colorScheme.secondary,
      activeTrackColor: Theme.of(context).primaryColor,
      thumbIcon: thumbIcon,
      value: settingsProvider.appTheme == ThemeMode.dark,
      onChanged: (value) {
        setState(() {
          if (value) {
            //dark=true
            Provider.of<SettingsProvider>(context, listen: false)
                .changeAppTheme(ThemeMode.dark);
          } else {
            Provider.of<SettingsProvider>(context, listen: false)
                .changeAppTheme(ThemeMode.light);
          }
        });
      },
    );
  }
}
