import 'package:flutter/material.dart';
import 'package:islamy/taps/sebha_tab/tasbeeh_number.dart';
import 'package:islamy/taps/sebha_tab/zkr_name.dart';
import 'package:islamy/widgets/image_widget.dart';
import 'package:islamy/widgets/title_widget.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 1, child: ImageWidget(imgPath: 'assets/images/sebha.png')),
        const SizedBox(
          height: 41,
        ),
        Expanded(
          child: Column(
            children: [
              TitleWidget(
                title: 'عدد التسبيحات',
              ),
              TasbehNumber(number: 30),
              AzkarName(azkarName: 'سبحان الله'),
            ],
          ),
        )
      ],
    );
  }
}
