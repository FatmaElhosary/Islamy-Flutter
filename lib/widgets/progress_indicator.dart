import 'package:flutter/material.dart';

class ProgressWait extends StatelessWidget {
  const ProgressWait({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: Theme.of(context).colorScheme.onSecondary,
    ));
  }
}
