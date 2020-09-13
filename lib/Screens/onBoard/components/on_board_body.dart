import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_board_screen/Utils/AppConstant.dart';
import 'on_board_content.dart';

class OnBoardBody extends StatefulWidget {
  @override
  _OnBoardBodyState createState() => _OnBoardBodyState();
}

class _OnBoardBodyState extends State<OnBoardBody> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onBoardData.length,
                itemBuilder: (context, index) => OnBoardContent(
               // itemBuilder: (context, index) => SplashContent(
                  test: onBoardData[index]["text"],
                  image: onBoardData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: List.generate(
                        onBoardData.length, (index) => buildDot(index: index)),
                  ),
                  Spacer(),
                  ButtonTheme(
                    minWidth: 250.0,
                    height: 50.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29.0),
                          side: BorderSide(color: primaryColor)),
                      onPressed: () {},
                      color: primaryColor,
                      textColor: Colors.white,
                      child: Text("Continue",
                          style: TextStyle(fontSize: 14)),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 8,
      width: currentPage == index ? 20 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
