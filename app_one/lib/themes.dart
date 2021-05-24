import 'package:flutter/material.dart';

final tealTheme = ThemeData(
  scaffoldBackgroundColor: Colors.teal[100],
  primarySwatch: Colors.teal,
  brightness: Brightness.light,
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 28, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
    bodyText2: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
  ),
  iconTheme: IconThemeData(color: Colors.teal[900], opacity: 80, size: 40),
);

final purpleTheme = ThemeData(
  scaffoldBackgroundColor: Colors.deepPurple[50],
  primarySwatch: Colors.deepPurple,
  brightness: Brightness.light,
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 28, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
    bodyText1: TextStyle(fontSize: 16, fontFamily: 'Cookie'),
  ),
  iconTheme:
      IconThemeData(color: Colors.deepPurple[900], opacity: 80, size: 40),
);

final darkTheme = ThemeData(
  appBarTheme:
      AppBarTheme(titleTextStyle: TextStyle(fontStyle: FontStyle.italic)),
  scaffoldBackgroundColor: Colors.orange[100],
  primarySwatch: Colors.orange,
  brightness: Brightness.dark,
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 28, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
    bodyText1: TextStyle(fontSize: 16, fontFamily: 'Cookie'),
  ),
  iconTheme: IconThemeData(color: Colors.orange[900], opacity: 80, size: 40),
);
