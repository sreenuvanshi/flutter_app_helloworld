import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'app_classes/first_screen.dart';
import 'app_classes/login_screen.dart';

void main() {
  runApp(FisrtApp());
}

class FisrtApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Fltter App",
      home: Scaffold(
          body: Container(child: LoginScreen())),
    );
  }
}
