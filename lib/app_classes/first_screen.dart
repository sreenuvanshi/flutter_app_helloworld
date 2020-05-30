import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterapp/app_classes/home_screen.dart';

import 'login_screen.dart';

class LauncherScreen extends StatelessWidget {
  List<Color> _colors = [Colors.black, Colors.black, Colors.black];
  List<double> _stops = [0.0, 0.0, 0.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color.fromRGBO(58, 66, 86, 1.0),
            padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            getButton(
                "Home", context, MediaQuery
                .of(context)
                .size
                .width, 1),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getButton("Login", context,
                    (MediaQuery
                        .of(context)
                        .size
                        .width - 50) / 2, 2),
                SizedBox(width: 10.0),
                getButton("Settings", context,
                    (MediaQuery
                        .of(context)
                        .size
                        .width - 50) / 2, 3)
              ],
            ),
            SizedBox(height: 100.0),
          ],
        )));
  }

  Widget getButton(String title, BuildContext context, double type,
      int navigateType) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Colors.lightBlue,
      child: MaterialButton(
        minWidth: type,
        padding: EdgeInsets.fromLTRB(10.0, 7.0, 10.0, 7.0),
        child: Text(title,
            textAlign: TextAlign.center, style: getTextStyle(Colors.white)),
        onPressed: () {
          if (navigateType == 1) {
            pushScreen(context, HomeScreen());
          } else if (navigateType == 2) {
            pushScreen(context, LoginScreen());
          }
        },
      ),
    );
  }

  getTextStyle(Color color) {
    return TextStyle(fontFamily: 'Verdana', fontSize: 18.0, color: color);
  }

  void pushScreen(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }
}
