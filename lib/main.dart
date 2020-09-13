import 'package:flutter/material.dart';
import 'package:on_board_screen/Utils/AppConstant.dart';

import 'Screens/onBoard/on_board_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: textColor),
          bodyText2: TextStyle(color: textColor)
        ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnBoardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
