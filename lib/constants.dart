import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const kLiveMatchAppBar = TextStyle(
  color: Colors.white,
  wordSpacing: 4,
  fontSize: 20.0,
);

const kMatchesText = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Color(0xff2C2E43),
);

const kContainerDecorationMatch = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(30.0)),
);

const kContainerDecorationLiveMatch = BoxDecoration(
  color: Color(0xffEF233C),
  borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(30.0),
      bottomRight: Radius.circular(30.0),
      ),
  boxShadow: [
    BoxShadow(
      color:  Color(0xffEF233C),
      blurRadius: 20,
      spreadRadius: 0.0,
      offset: Offset(2.0, 2.0), // shadow direction: bottom right
    )
  ],
);

const kLiveSpanText = TextStyle(
  fontSize: 20.0,
  color: Color(0xff2C2E43),
  fontWeight: FontWeight.w900,
);

const kLiveStandingText = TextStyle(
  fontSize: 18.0,
  color: Color(0xff2C2E43),
  fontWeight: FontWeight.w900,
);

const kLiveSpanTextliveScreen = TextStyle(
  fontSize: 20.0,
  color: Colors.white,
  fontWeight: FontWeight.w900,
);

const kVersusAvatar = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
);
const kVersusAvatarliveScreen = TextStyle(
  color: Color(0xff2C2E43),
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
);

const kContainerDecorationLive = BoxDecoration(
  color: Color(0xffEDF2F4),
  borderRadius: BorderRadius.all(Radius.circular(30.0)),
);
const kContainerDecorationLiveScreen = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(30.0)),
);

const kContainerDecorationButton = BoxDecoration(
  color: Color(0xffEF233C),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);
const kContainerDecorationButtonlivescreen = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const koversTextStyle = TextStyle(
  fontSize: 12.0,
  color: Colors.grey,
);
const koversTextStyleliveScreen = TextStyle(
  fontSize: 12.0,
  color: Colors.white,
);

const teamRecordsStyle = TextStyle(
  color: Color(0xff2C2E43),
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

class CustomIcons {
  CustomIcons._();

  static const _kFontFam = 'MyFlutterApp';
  static const _kFontPkg = null;

  static const IconData four_dots =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
