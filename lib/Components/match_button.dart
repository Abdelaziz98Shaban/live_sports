import 'package:flutter/material.dart';

class MatchButton extends StatelessWidget {

  final int flx ;
  final String matchText;


  MatchButton({this.flx, this.matchText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flx,
        child: FlatButton(
          child: Text(
            matchText,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff2C2E43),
            ),
          ),
          onPressed: () {
            //do something
          },
        ));
  }
}
