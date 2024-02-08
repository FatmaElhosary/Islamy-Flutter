import 'package:flutter/material.dart';
import 'package:islamy/taps/radio_tab/radio_control.dart';
import 'package:islamy/widgets/image_widget.dart';
import 'package:islamy/widgets/title_widget.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageWidget(imgPath: 'assets/images/radio_image.png'),
        const SizedBox(
          height: 55,
        ),
        TitleWidget(title: 'إذاعة القرآن الكريم'),
        const SizedBox(
          height: 65,
        ),
        RadioControl(),
      ],
    );
  }
}
