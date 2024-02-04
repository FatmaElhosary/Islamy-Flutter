import 'package:flutter/material.dart';
import 'package:islamy/taps/quran_tab/text_head.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/quran.png'),
        const Divider(
          height: 3,
          color: Colors.red,
        ),
        Row(
          children: [
            TextHead(
              textTitle: 'عدد الآيات',
            ),
            TextHead(
              textTitle: 'اسم السورة',
            ),
          ],
        )
      ],
    );
  }
}
