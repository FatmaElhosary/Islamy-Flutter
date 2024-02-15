import 'package:flutter/material.dart';
import 'package:islamy/packages/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DropDown extends StatelessWidget {
  const DropDown({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Language> languages = <Language>[
      Language(language: AppLocalizations.of(context)!.english, lanCode: 'en'),
      Language(language: AppLocalizations.of(context)!.arabic, lanCode: 'ar')
    ];
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return DropdownMenu<Language>(
      menuStyle: MenuStyle(
          backgroundColor: MaterialStatePropertyAll(
        Theme.of(context).primaryColor,
      )),
      textStyle: Theme.of(context).textTheme.labelMedium,
      initialSelection: languages
          .firstWhere((lang) => settingsProvider.appLang == lang.lanCode),
      onSelected: (language) =>
          settingsProvider.changeLanguage(language!.lanCode),
      dropdownMenuEntries: languages
          .map((l) => DropdownMenuEntry<Language>(
              value: l,
              label: l.language,
              style: MenuItemButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                textStyle: Theme.of(context).textTheme.labelMedium,
              )))
          .toList(),
    );
  }
}

class Language {
  String language;
  String lanCode;
  Language({required this.language, required this.lanCode});
}
