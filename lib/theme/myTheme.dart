import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    primaryColor: Colors.blue,
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFE6F2FF),
    colorScheme: ColorScheme.light(),
    primaryColor: Colors.blue,
    
  );
}
