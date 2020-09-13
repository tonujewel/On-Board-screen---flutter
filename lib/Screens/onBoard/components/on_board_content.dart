import 'package:flutter/material.dart';
import 'package:on_board_screen/Utils/AppConstant.dart';

import '../../../size_config.dart';

class OnBoardContent extends StatelessWidget {
  final String image, test;
  const OnBoardContent({
    Key key,
    this.image,
    this.test,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'Last Orbital',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: primaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text("$test",style: TextStyle(color: textColor, fontWeight: FontWeight.bold,fontSize: 22),),
        Spacer(),
        Image.asset('$image')
      ],
    );
  }
}
