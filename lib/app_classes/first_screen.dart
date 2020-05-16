import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.lightBlue,
        child: Center(
          child: Text(
            getLuckyNumber(),
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ));
  }
  String getLuckyNumber(){
    var random =  Random(50);
    var number = random.nextInt(50);
    return "$number";
  }
}
