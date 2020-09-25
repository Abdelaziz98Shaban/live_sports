import 'package:flutter/material.dart';

import 'Screens/matches_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Color(0xffEF233C),
      ),
      home:MatchesScreen(),
    );
  }
}
