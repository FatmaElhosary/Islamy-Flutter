import 'package:flutter/material.dart';
import 'package:islamy/taps/quran_tab/sura_name.dart';

class NamesListWidget extends StatelessWidget {
  List<String> souraNames;
  NamesListWidget({super.key, required this.souraNames});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 5.5),
        shrinkWrap: true,
        itemBuilder: (context, index) => SuraName(
          souraName: souraNames[index],
          index: index,
        ),
        itemCount: souraNames.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 11,
          );
        },
      ),
    );
  }
}
