import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
      title: "My Fltter App",
      home: Scaffold(
        appBar: AppBar(title: Text("App Bar Title")),
        body: Material(
            color: Colors.lightBlue,
            child: Center(
              child: Text(
                "Hello flutter",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            )),
      )));
}
