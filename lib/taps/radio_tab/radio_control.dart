import 'package:flutter/material.dart';

class RadioControl extends StatelessWidget {
  const RadioControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () => {},
            icon: const ImageIcon(AssetImage('assets/images/back-icon.png'))),
        IconButton(
            onPressed: () => {},
            icon: const ImageIcon(AssetImage('assets/images/play-icon.png'))),
        IconButton(
            onPressed: () => {},
            icon: const ImageIcon(AssetImage('assets/images/next-icon.png'))),
      ],
    );
  }
}
