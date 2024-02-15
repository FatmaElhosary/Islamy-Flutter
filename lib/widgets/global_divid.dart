import 'package:flutter/material.dart';

class DivideHorizental extends StatelessWidget {
  const DivideHorizental({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      thickness: 3,
      color: Theme.of(context).colorScheme.onSecondary,
    );
  }
}
