import 'package:flutter/material.dart';
import 'package:on_board_screen/size_config.dart';
import 'components/on_board_body.dart';

class OnBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: OnBoardBody(
      ),
    );
  }
}
