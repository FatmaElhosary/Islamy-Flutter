import 'package:flutter/material.dart';
import 'package:islamy/app_bar.dart';
import 'package:islamy/data_class/hadeth_data.dart';
import 'package:islamy/my_theme.dart';
import 'package:islamy/taps/quran_tab/aya_text.dart';
import 'package:islamy/taps/quran_tab/soura_name_text.dart';
import 'package:islamy/widgets/divider_line.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'dadeth-details';
 
  HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
     Hadeth hadeth=ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: const GlobalAppBar(),
        body: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .06,
              horizontal: MediaQuery.of(context).size.width * 0.05),
          decoration: BoxDecoration(
            color: MyTheme.lightWhite,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              suraDetailaName(souraName: hadeth.hadethNumber),
              const DividerLine(),
              Expanded(
                child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  itemBuilder: (context, index) => AyaLine(
                    ayaNumber: index + 1,
                    ayaLine: hadeth.hadethContentLines[index],
                  ),
                  itemCount: hadeth.hadethContentLines.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
