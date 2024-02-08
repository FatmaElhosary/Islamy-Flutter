import 'package:flutter/material.dart';

class TextHead extends StatelessWidget {
  String textTitle;

  TextHead({super.key, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          textTitle,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
