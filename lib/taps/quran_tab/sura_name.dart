import 'package:flutter/material.dart';
import 'package:islamy/screens/soura_details.dart';

import '../../data_class/soura_details_args.dart';

class SuraName extends StatelessWidget {
  String souraName;
  int index;
   SuraName({super.key,required this.souraName,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(

        onTap: (){
          Navigator.pushNamed(context, SouraDetails.routeName,
          arguments: SouraDetailsArgs(souraName,index+1));
        },
        child: Text(souraName,style: Theme.of(context).textTheme.labelLarge,
          textAlign:TextAlign.center ,));
  }
}
