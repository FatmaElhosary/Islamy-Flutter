import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlobalAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: Theme.of(context).textTheme.headlineLarge,
      title: Text(AppLocalizations.of(context)!.islami),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
