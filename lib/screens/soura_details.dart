import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/app_bar.dart';

import 'package:islamy/packages/providers/settings_provider.dart';
import 'package:islamy/taps/quran_tab/aya_text.dart';
import 'package:islamy/taps/quran_tab/soura_name_text.dart';
import 'package:islamy/widgets/divider_line.dart';
import 'package:islamy/widgets/progress_indicator.dart';
import 'package:provider/provider.dart';

import '../data_class/soura_details_args.dart';

class SouraDetails extends StatefulWidget {
  static const String routeName = 'soura-datails';

  const SouraDetails({super.key});

  @override
  State<SouraDetails> createState() => _SouraDetailsState();
}

class _SouraDetailsState extends State<SouraDetails> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    SouraDetailsArgs souraDetails =
        ModalRoute.of(context)!.settings.arguments as SouraDetailsArgs;
    if (ayat.isEmpty) {
      loadSouraFile(souraDetails.souraNumber);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Provider.of<SettingsProvider>(context).bgImage),
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
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              SuraDetailsName(souraName: souraDetails.souraName),
              const DividerLine(),
              Expanded(
                child: ayat.isEmpty
                    ? const ProgressWait()
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        itemBuilder: (context, index) => AyaLine(
                          ayaNumber: index + 1,
                          ayaLine: ayat[index],
                        ),
                        itemCount: ayat.length,
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadSouraFile(int suraNumber) async {
    String sura = await rootBundle.loadString('assets/files/$suraNumber.txt');

    ayat = sura.trim().split('\r\n');
    setState(() {});
  }
}
