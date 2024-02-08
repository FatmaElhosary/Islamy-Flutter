import 'package:flutter/material.dart';
import 'package:islamy/my_theme.dart';

class TasbehNumber extends StatelessWidget {
  int number;
  TasbehNumber({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0,
        ),
        borderRadius: BorderRadius.circular(25),
        color: MyTheme.primaryAlpha,
      ),
      child: Text(
        '$number',
        style: Theme.of(context).textTheme.labelLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
