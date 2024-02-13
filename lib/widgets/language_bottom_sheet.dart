import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/packages/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        InkWell(
          onTap: () {
            //change lang to en
            Provider.of<SettingsProvider>(context, listen: false)
                .changeLanguage('en');
          },
          child: Provider.of<SettingsProvider>(context).appLanguage == 'en'
              ? getSelectedItemWidget(AppLocalizations.of(context)!.english)
              : getUnSelectedItemWidget(AppLocalizations.of(context)!.english),
        ),
        const SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () {
            //ar
            Provider.of<SettingsProvider>(context, listen: false)
                .changeLanguage('ar');
          },
          child: Provider.of<SettingsProvider>(context).appLanguage == 'ar'
              ? getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
              : getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic),
        ),
      ]),
    );
  }

  Widget getSelectedItemWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
        Icon(
          Icons.check,
          size: 35,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget getUnSelectedItemWidget(String text) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }
}
