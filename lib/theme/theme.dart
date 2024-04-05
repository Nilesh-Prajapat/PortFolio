import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/texttheme.dart';

class MyAppTheme {

  static ThemeData MyTheme = ThemeData(

  appBarTheme: AppBarTheme(
centerTitle: true,
    color: Colors.transparent,
    titleTextStyle: TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontFamily: GoogleFonts.arefRuqaaInk().fontFamily,
      fontWeight: FontWeight.w500

    )
  ),
textTheme: Texttheme.MyTextStyle,
scaffoldBackgroundColor: Colors.black,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
          color: Colors.white
      ),
      hintStyle: const TextStyle(
          color: Colors.white
      ),
errorBorder:  OutlineInputBorder(

    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(

      color: Colors.white,
      width: 3,
    )
),

      contentPadding: const EdgeInsets.all(15),
      enabledBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(

            color: Colors.white,
            width: 3,
          )
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(color: Colors.white, width: 4),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(color: Colors.white, width: 4),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                        width: 3,
                        color: Colors.white
                    )
                )
            )
        )
    ),

    colorScheme: const ColorScheme.dark(primary: Colors.white)
  );
}