import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Handlee',
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'Handlee'
      )
    ),
    primaryColor: Colors.blue[800],
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.blue[800],
      secondary: Colors.blue[700],
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black54),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue[800],
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // We can also centralize input decoration styles here if desired
    ),
  );
}
