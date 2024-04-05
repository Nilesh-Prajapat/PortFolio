import 'package:flutter/material.dart';
class Texttheme {
  Texttheme._();
  static TextTheme MyTextStyle = const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
          fontFamily: "Schyler",
          fontWeight: FontWeight.w500,
        color: Colors.white

),
    titleSmall: TextStyle(
        fontSize: 25,
        fontFamily: "Schyler",
        fontWeight: FontWeight.w500,
        color: Colors.black

    ),
      bodyLarge: TextStyle(
          fontSize: 18,
          fontFamily: "Schyler",
          fontWeight: FontWeight.w500,
          color: Colors.black

      ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15,
      color: Colors.black

    ),
    bodyMedium: TextStyle(
        fontSize: 30,
        fontFamily: "Schyler",
        fontWeight: FontWeight.w500,
        color: Colors.black

    ),
    displayMedium: TextStyle(
        fontSize: 18,
        fontFamily: "Schyler",
        fontWeight: FontWeight.w500,
        color: Colors.white
    ),
    displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.black

    ),
    labelMedium:
      TextStyle(
          fontSize: 25,
          fontFamily: "Schyler",
          fontWeight: FontWeight.w500,
          color: Colors.black

    ),
    displayLarge: TextStyle(
        fontSize: 28,
        fontFamily: "League",
        fontWeight: FontWeight.w900,
        color: Colors.black

    )

  );
}