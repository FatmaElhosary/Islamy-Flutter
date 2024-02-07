import 'package:flutter/material.dart';

class RadioControl extends StatelessWidget {
  const RadioControl({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.play_arrow_sharp)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.play_arrow_sharp)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.play_arrow_sharp)),
          ],
        );
  }
}