// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

const themeColor = Color(0xff87c232);
final theme = ThemeData(
  primaryColor: themeColor,
  accentColor: Colors.grey[300],
  backgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(elevation: 0),
  scaffoldBackgroundColor: const Color(0xFFEFEFEF),
  // scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Nexa',
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline2: TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline3: TextStyle(
          fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline5: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
      headline6: TextStyle(fontSize: 18.0),
      bodyText1: TextStyle(fontSize: 16.0),
      bodyText2: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w100),
      button: TextStyle(fontSize: 12),
      overline: TextStyle(
        height: 1.5,
        fontSize: 16,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      )),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(fontSize: 12, color: Colors.grey[500]),
    labelStyle: TextStyle(color: themeColor),
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
  }),
);
