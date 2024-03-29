import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/data_class/hadeth_data.dart';
import 'package:islamy/taps/hadeth_tab/hadeth.dart';
import 'package:islamy/taps/hadeth_tab/hadeth_title.dart';
import 'package:islamy/widgets/global_divid.dart';
import 'package:islamy/widgets/image_widget.dart';
import 'package:islamy/widgets/progress_indicator.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      readAhadethFile();
    }
    return Column(
      children: [
        const ImageWidget(imgPath: 'assets/images/ahadeth_image.png'),
        const DivideHorizental(),
        const HadethHeader(title: 'الأحاديث'),
        const DivideHorizental(),
        Expanded(
            child: ahadethList.isEmpty
                ? const ProgressWait()
                : ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 17.5),
                    itemBuilder: (context, index) =>
                        HadethTitle(hadeth: ahadethList[index]),
                    itemCount: ahadethList.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 11,
                    ),
                  )),
      ],
    );
  }

  Future<void> readAhadethFile() async {
    String ahadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethArr = ahadeth.split('#');
    ///////split each hadeth to Hadeth data class//////////
    ahadethList = ahadethArr.map((hadeth) {
      List<String> lines = hadeth.trim().split('\n');
      String title = lines.first;
      lines.removeAt(0);
      List<String> hadethLines = lines;
      return Hadeth(hadethNumber: title, hadethContentLines: hadethLines);
    }).toList();
    setState(() {});
  }
}
