import 'package:flutter/material.dart';
import 'package:flag/flag.dart';


class VersusMatch extends StatelessWidget {
  final String countryFlag ;
  final String countryName ;
  final String rate ;
  final String overs ;
  final TextStyle Flagstyle ;
  final TextStyle Oversstyle ;


  VersusMatch({this.countryFlag, this.countryName, this.rate,this.overs,this.Flagstyle,this.Oversstyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flag(countryFlag, height: 50, width: 50),
        Text(
          countryName,
          style:Flagstyle,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              rate,
              style:Flagstyle,
            ),
            Text(
              overs,
              style:Oversstyle,
            )
          ],
        )
      ],
    );
  }
}
