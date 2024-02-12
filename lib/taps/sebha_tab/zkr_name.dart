import 'package:flutter/material.dart';
import 'package:islamy/my_theme.dart';

class AzkarName extends StatelessWidget {
  String azkarName;
  AzkarName({super.key, required this.azkarName});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        child: Text(
          azkarName,
          style: Theme.of(context).textTheme.labelLarge,
        ));
  }
}
