import 'package:flutter/material.dart';

class MyThemeData {
  static const Color primarycolor = Color(0xFF5D9CEC);
  static const Color scaffoldBacgroundcolor = Color(0xFFDFECDB);
  static const Color green = Color(0xFF61E757);
  static const Color red = Color(0xFFEC4B4B);

  static final lightTheme = ThemeData(
    primaryColor: primarycolor,
    scaffoldBackgroundColor: scaffoldBacgroundcolor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        unselectedIconTheme: IconThemeData(
          size: 32,
        ),
        selectedIconTheme: IconThemeData(
          size: 32,
        )),
    textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: primarycolor,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
        )),
  );
}
