import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color.fromRGBO(58, 66, 86, 1.0),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getTextField("Email", false),
                SizedBox(height: 15.0),
                getTextField("Password", true),
                SizedBox(height: 15.0),
                getButton("Login", context)
              ],
            )));
  }

  Widget getTextField(String hint, bool isHint) {
    return TextField(
        obscureText: isHint,
        cursorColor: Colors.white,
        style: getTextStyle(Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(15.0, 7.0, 15.0, 7.0),
            hintText: hint,
            hintStyle: getTextStyle(Colors.white30),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue),
                borderRadius: BorderRadius.circular(30)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(30))));
  }

  Widget getButton(String title, BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(30),
      color: Colors.lightBlue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(15.0, 7.0, 15.0, 7.0),
        child: Text(title,
            textAlign: TextAlign.center, style: getTextStyle(Colors.white)),
        onPressed: () {},
      ),
    );
  }

  getTextStyle(Color color) {
    return TextStyle(fontFamily: 'Verdana', fontSize: 20.0, color: color);
  }

}
