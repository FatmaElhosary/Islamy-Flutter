import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: Divider(
                  thickness: 1,
                  color: Theme.of(context).primaryColor,
                ),
              );
  }
}