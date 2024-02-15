import 'package:flutter/material.dart';
import 'package:islamy/taps/settings-tab/switch_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/widgets/drop_down_menu.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.dark,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 10,
          ),
          const SwitchWidget(),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 10,
          ),
          const DropDown(),
        ],
      ),
    );
  }
/* 
  void showScreenSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => const LanguageBottomSheet());
  } */
}
/* InkWell(
            onTap: () {
              showScreenSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Provider.of<SettingsProvider>(context).appLanguage == 'en'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ],
              ),
            ),
          )
         */