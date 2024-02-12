import 'package:flutter/material.dart';
import 'package:islamy/packages/providers/settings_provider.dart';
import 'package:islamy/taps/sebha_tab/tasbeeh_number.dart';
import 'package:islamy/taps/sebha_tab/zkr_name.dart';
import 'package:islamy/widgets/image_widget.dart';
import 'package:islamy/widgets/title_widget.dart';
import 'package:provider/provider.dart';

class SebhaView extends StatefulWidget {
  SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  List<String> azkar = ['سبحان الله', 'الحمد الله'];
  int counter = 0;
  int index = 0;
  double turns = 0.0;
  @override
  void initState() {
    counter = 0;
    index = 0;
    super.initState();
  }

  void onTapSebha() {
    //sebha no change if counter =33
    if (counter != 33) {
      turns += 1 / 33;
    }
    counter++;
    //stop when counter =33///
    if (counter == 34) {
      //start new zkr
      if (index < azkar.length - 1) {
        index++;
      } else {
        index = 0;
      }
      counter = 0;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: InkWell(
                onTap: () {
                  onTapSebha();
                },
                child: AnimatedRotation(
                    turns: turns,
                    duration: const Duration(seconds: 1),
                    child: ImageWidget(
                        imgPath:
                            Provider.of<SettingsProvider>(context).sebhaImg)))),
        const SizedBox(
          height: 41,
        ),
        Expanded(
          child: Column(
            children: [
              TitleWidget(
                title: 'عدد التسبيحات',
              ),
              TasbehNumber(number: counter),
              AzkarName(azkarName: azkar[index]),
            ],
          ),
        )
      ],
    );
  }
}
