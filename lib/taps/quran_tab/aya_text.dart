import 'package:flutter/material.dart';

class AyaLine extends StatelessWidget {
  String ayaLine;
  int ayaNumber;
  AyaLine({super.key, required this.ayaLine, required this.ayaNumber});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${ayaLine.trim()}{$ayaNumber}',
      style: Theme.of(context).textTheme.labelMedium,
      textDirection: TextDirection.rtl,
      softWrap: true,
    );
  }
}
