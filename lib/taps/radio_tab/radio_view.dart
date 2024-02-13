import 'package:flutter/material.dart';
import 'package:islamy/taps/radio_tab/radio_control.dart';
import 'package:islamy/widgets/image_widget.dart';
import 'package:islamy/widgets/title_widget.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageWidget(imgPath: 'assets/images/radio_image.png'),
        SizedBox(
          height: 55,
        ),
        TitleWidget(title: 'إذاعة القرآن الكريم'),
        SizedBox(
          height: 65,
        ),
        RadioControl(),
      ],
    );
  }
}
