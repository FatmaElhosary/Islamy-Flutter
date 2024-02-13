import 'package:flutter/material.dart';

class AhadethImg extends StatelessWidget {
  final String imagePath;
 const AhadethImg({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(imagePath));
  }
}
