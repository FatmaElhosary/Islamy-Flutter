import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  String imgPath;
  ImageWidget({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(imgPath));
  }
}
