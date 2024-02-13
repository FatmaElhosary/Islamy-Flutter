import 'package:flutter/material.dart';
import 'package:islamy/data_class/soura.dart';
import 'package:islamy/taps/quran_tab/sura_widget.dart';

class NamesListWidget extends StatelessWidget {
  final List<Soura> sour;

 const NamesListWidget({super.key, required this.sour});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 15),
        shrinkWrap: true,
        itemBuilder: (context, index) => SuraWidget(
          soura: sour[index],
          index: index,
        ),
        itemCount: sour.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 11,
          );
        },
      ),
    );
  }
}
