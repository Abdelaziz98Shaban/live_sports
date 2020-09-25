import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:live_sports/Components/live_container.dart';
import '../constants.dart';

class LiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEDF2F4),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MatchContainer(
              felxo: 4,
              containerStyle: kContainerDecorationLiveMatch,
              leftCorner :Column(
                mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text('. .',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('. .',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),

                ],
              ),
          ],
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
              richTextDecoration: kContainerDecorationLiveScreen,
              flagTextStyle: kLiveSpanTextliveScreen,
              avatarColor: Colors.white,
              rightFlagLogo: 'EG',
              rightFlagText: 'EGY',
              rightOverText: '180/3',
              rightRateText: '(20 Overs)',
              buttonDecoration: kContainerDecorationButtonlivescreen,
              buttonText: 'LIVE Statistics',
              buttonTextColor: Color(0xff2C2E43),
              versusTextStyle: kVersusAvatarliveScreen,
              overStyle: koversTextStyleliveScreen,
            ),
            SizedBox(
              height: 5.0,
            ),
           Expanded(
             flex: 1,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Text(
                   'Team Standing',
                 style:kLiveSpanText,
                 ),
                 Text(
                   'View All',
                 style: koversTextStyle,
                 )
               ],
             ),
           ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: kContainerDecorationMatch,
                child:Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:10.0),
                      child: Container(
                        padding: EdgeInsets.only(left:15.0,top:10.0,bottom: 10.0),
                        decoration: kContainerDecorationLive,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text(
                                  'Team',
                                style: teamRecordsStyle,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'P',
                                style: teamRecordsStyle,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'W',
                                style: teamRecordsStyle,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'L',
                                style: teamRecordsStyle,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Pt',
                                style: teamRecordsStyle,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                  '1.',
                                style: koversTextStyle ,
                              ),
                              Flag('EG', height: 30, width: 30),
                              Text(
                                'EGY',
                                style:kLiveSpanText,
                              ),
                              Text(
                                '8',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '7',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '1',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '21',
                                style: koversTextStyle ,
                              ),
                            ],
                          ),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '2.',
                                style: koversTextStyle ,
                              ),
                              Flag('Au', height: 30, width: 30),
                              Text(
                                'AUS',
                                style:kLiveSpanText,
                              ),
                              Text(
                                '8',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '6',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '2',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '18',
                                style: koversTextStyle ,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '3.',
                                style: koversTextStyle ,
                              ),
                              Flag('US', height: 30, width: 30),
                              Text(
                                'USA',
                                style:kLiveSpanText,
                              ),
                              Text(
                                '8',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '5',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '3',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '15',
                                style: koversTextStyle ,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '4.',
                                style: koversTextStyle ,
                              ),
                              Flag('SA', height: 30, width: 30),
                              Text(
                                'SUA ',
                                style:kLiveStandingText,
                              ),
                              Text(
                                '8',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '4',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '4',
                                style: koversTextStyle ,
                              ),
                              Text(
                                '12',
                                style: koversTextStyle ,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left:15.0,top: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xff2C2E43),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0),bottomLeft: Radius.circular(30.0))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LIVE from England.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      'Egypt has won the toss and elected to bat.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
