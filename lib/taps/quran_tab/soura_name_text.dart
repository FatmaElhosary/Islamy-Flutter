import 'package:flutter/material.dart';
import 'package:islamy/packages/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsName extends StatelessWidget {
 final String souraName;
 const SuraDetailsName({super.key, required this.souraName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Provider.of<SettingsProvider>(context).playImg),
        const SizedBox(
          width: 26,
        ),
        Text(
          souraName,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
//'  سورة $souraName',