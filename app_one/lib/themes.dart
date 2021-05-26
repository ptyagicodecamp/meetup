import 'package:flutter/material.dart';

final tealTheme = ThemeData(
  scaffoldBackgroundColor: Colors.teal[50],
  primarySwatch: Colors.teal,
  brightness: Brightness.light,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.teal[900],
    foregroundColor: Colors.tealAccent,
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.orange[100],
  primarySwatch: Colors.orange,
  brightness: Brightness.dark,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.orange[900],
    foregroundColor: Colors.white,
    elevation: 10,
  ),
);
