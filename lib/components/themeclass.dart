// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeClass _themeClass = ThemeClass();

class ThemeClass {
  Color lightPrimaryColor = HexColor('#0A2463');
  Color darkPrimaryColor = HexColor('#4D5359');
  Color secondaryColor = HexColor('#B1E6E7');
  Color tertiaryColor = HexColor('#F4FFF8');

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: _themeClass.lightPrimaryColor,
      secondary: _themeClass.secondaryColor,
      tertiary: _themeClass.tertiaryColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: _themeClass.darkPrimaryColor,
    ),
  );

  static TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 20,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 20,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),

    titleSmall: TextStyle(
      fontSize: 16,
      fontStyle: FontStyle.normal,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    //ปุ่มหน้าแรก
    labelMedium: TextStyle(
      fontSize: 16,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}
