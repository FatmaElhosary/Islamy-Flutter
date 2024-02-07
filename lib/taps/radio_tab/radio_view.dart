import 'package:flutter/material.dart';
import 'package:islamy/taps/radio_tab/radio_control.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        const SizedBox(
          height: 55,
        ),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 65,
        ),
       RadioControl(),
      ],
    );
  }
}
