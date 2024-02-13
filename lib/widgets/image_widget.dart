import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
 final String imgPath;
 const ImageWidget({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(imgPath));
  }
}
