import 'package:flutter/material.dart';
import 'package:live_sports/Components/versus_matches.dart';
import 'package:live_sports/Screens/live_screen.dart';


class MatchContainer extends StatelessWidget {
  final BoxDecoration containerStyle;
  final Widget leftCorner;
  final Widget rightCorner;
  final BoxDecoration richTextDecoration;
  final String leftFlagText;
  final TextStyle flagTextStyle;
  final String leftFlagLogo;
  final String leftRateText;
  final String leftOverText;
  final Color avatarColor;
  final String rightFlagText;
  final String rightFlagLogo;
  final String rightRateText;
  final String rightOverText;
  final BoxDecoration buttonDecoration;
  final String buttonText;
  final Color buttonTextColor;
  final TextStyle versusTextStyle ;
  final TextStyle overStyle ;
  final int felxo ;

  MatchContainer(
      {this.containerStyle,
        this.leftCorner,
        this.rightCorner,
        this.richTextDecoration,
        this.leftFlagText,
        this.flagTextStyle,
        this.leftFlagLogo,
        this.leftRateText,
        this.leftOverText,
        this.avatarColor,
        this.rightFlagLogo,
        this.rightFlagText,
        this.rightRateText,
        this.rightOverText,
        this.buttonDecoration,
        this.buttonText,
        this.buttonTextColor,
        this.versusTextStyle,
        this.overStyle,
        this.felxo,
      });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: felxo,
        child: Container(
          decoration: containerStyle,
          child: Padding(
            padding: const EdgeInsets.only(bottom:10.0,top: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      leftCorner,
                      Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        decoration: richTextDecoration,
                        child: rightCorner,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      VersusMatch(
                        countryFlag: leftFlagLogo,
                        countryName: leftFlagText,
                        rate: leftRateText,
                        overs: leftOverText,
                        Flagstyle: flagTextStyle,
                        Oversstyle: overStyle,
                      ),
                      CircleAvatar(
                          radius: 25.0,
                          backgroundColor: avatarColor,
                          child: Text(
                            'VS',
                            style: versusTextStyle,
                          )),
                      VersusMatch(
                        countryFlag: rightFlagLogo,
                        countryName: rightFlagText,
                        rate: rightRateText,
                        overs: rightOverText,
                        Flagstyle: flagTextStyle,
                          Oversstyle:overStyle,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    decoration: buttonDecoration,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LiveScreen()),
                        );
                      },
                      child: Text(
                        buttonText,
                        style: TextStyle(
                          color: buttonTextColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
