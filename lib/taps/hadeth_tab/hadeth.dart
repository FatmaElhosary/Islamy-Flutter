import 'package:flutter/material.dart';
import 'package:islamy/data_class/hadeth_data.dart';
import 'package:islamy/screens/hadeth_details.dart';

class HadethTitle extends StatelessWidget {
  final Hadeth hadeth;
  // void Function() onTapClick;
 const HadethTitle({
    super.key,
    required this.hadeth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          //onTapClick();
          Navigator.pushNamed(context, HadethDetails.routeName,
              arguments: hadeth);
        },
        child: Text(
          hadeth.hadethNumber,
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: TextAlign.center,
        ));
    
  }
}
