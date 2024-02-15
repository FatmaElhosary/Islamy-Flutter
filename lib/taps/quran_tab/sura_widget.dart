import 'package:flutter/material.dart';
import 'package:islamy/data_class/soura.dart';
import 'package:islamy/screens/soura_details.dart';

import '../../data_class/soura_details_args.dart';

class SuraWidget extends StatelessWidget {
  final Soura soura;

 final int index;
const  SuraWidget({
    super.key,
    required this.soura,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SouraDetails.routeName,
            arguments: SouraDetailsArgs(soura.souraName, index + 1));
      },
      child: Row(
        children: [
          Expanded(
            child: Text(
              soura.ayatNumber,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              soura.souraName,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
/*   */