import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:live_sports/Components/live_container.dart';
import 'package:live_sports/Components/match_button.dart';
import '../constants.dart';

class MatchesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(
          child: Text(
            'LIVE Match Updates',
            style: kLiveMatchAppBar,
          ),
        ),
      ),
      backgroundColor: Color(0xffEDF2F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MatchButton(
                        flx: 2,
                        matchText: 'All',
                      ),
                      MatchButton(
                        flx: 3,
                        matchText: 'LIVE',
                      ),
                      MatchButton(
                        flx: 4,
                        matchText: 'Upcoming',
                      ),
                      MatchButton(
                        flx: 4,
                        matchText: 'Finished',
                      ),
                      Expanded(
                          flex: 1,
                          child: IconButton(
                              color: Color(0xffC9D1DA),
                              iconSize: 15,
                              icon: Icon(FontAwesomeIcons.ellipsisH),
                              onPressed: () {})),
                    ],
                  ),
                ),
              ),
              MatchContainer(
                felxo: 4,
                containerStyle: kContainerDecorationMatch,
                leftCorner: Text(
                  'Live Match',
                  style: kMatchesText,
                ),
                rightCorner: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.fiber_manual_record,
                            size: 18,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'LIVE',
                        style: kLiveSpanText,
                      ),
                    ],
                  ),
                ),
                leftFlagLogo: 'Au',
                leftFlagText: 'AUS',
                leftRateText: '180/6',
                leftOverText: '(50 Overs)',
                richTextDecoration: kContainerDecorationLive,
                flagTextStyle: kLiveSpanText,
                avatarColor: Color(0xff2B2D42),
                rightFlagLogo: 'EG',
                rightFlagText: 'EGY',
                rightOverText: '(20 Overs)',
                rightRateText: '180/3',
                buttonDecoration: kContainerDecorationButton,
                buttonText: 'View All',
                buttonTextColor: Colors.white,
                versusTextStyle: kVersusAvatar,
                overStyle:koversTextStyle ,
              ),
              SizedBox(
                height: 15.0,
              ),
             MatchContainer(
               felxo: 4,
               containerStyle: kContainerDecorationMatch,
               leftCorner:Text(
                 'Upcoming Match',
                 style: kMatchesText,
               ),
               rightCorner:Icon(FontAwesomeIcons.ellipsisH),
               leftFlagLogo: 'SA',
               leftFlagText: 'SA',
               leftRateText: '',
               leftOverText: '',
               flagTextStyle: kLiveSpanText,
               avatarColor: Color(0xff2B2D42),
               rightFlagLogo: 'US',
               rightFlagText: 'USA',
               rightOverText: '',
               rightRateText: '',
               buttonDecoration: kContainerDecorationButton,
               buttonText: '3h 43m left',
               buttonTextColor: Colors.white,
               versusTextStyle: kVersusAvatar,
               overStyle:koversTextStyle ,
             )
            ],
          ),
        ),
      ),
    );
  }
}
