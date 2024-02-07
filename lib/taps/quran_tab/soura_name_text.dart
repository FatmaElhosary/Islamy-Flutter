import 'package:flutter/material.dart';

class suraDetailaName extends StatelessWidget {
  String souraName;
  suraDetailaName({super.key, required this.souraName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/Icon awesome-play-circle.png'),
        SizedBox(
          width: 26,
        ),
        Text(
          souraName,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
//'  سورة $souraName',