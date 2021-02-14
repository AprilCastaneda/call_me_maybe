import 'package:flutter/material.dart';

class Styles {
  static final cmmTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.yellow[800],
    accentColor: Colors.blue,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
        headline4: TextStyle(color: Colors.blue),
        subtitle1: TextStyle(color: Colors.lightBlueAccent)),
  );
}
