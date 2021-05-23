import 'package:flutter/material.dart';

final tealTheme = ThemeData(
  scaffoldBackgroundColor: Colors.tealAccent[100],
  primarySwatch: Colors.teal,
  brightness: Brightness.light,
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 32, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
    bodyText1: TextStyle(fontSize: 16, fontFamily: 'MountainsofChristmas'),
  ),
);

final purpleTheme = ThemeData(
  scaffoldBackgroundColor: Colors.deepPurpleAccent[100],
  primarySwatch: Colors.purple,
  brightness: Brightness.light,
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 32, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
    bodyText1: TextStyle(fontSize: 16, fontFamily: 'MountainsofChristmas'),
  ),
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.orange,
  primarySwatch: Colors.orange,
  brightness: Brightness.dark,
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 32, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
    bodyText1: TextStyle(fontSize: 16, fontFamily: 'MountainsofChristmas'),
  ),
);
