import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageWidget extends StatelessWidget {
 final String imgPath;
 const ImageWidget({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: AssetImage(imgPath)));
  }
}
