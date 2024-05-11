import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.redAccent),
    useMaterial3: false,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    dialogBackgroundColor: Colors.white,
    popupMenuTheme: const PopupMenuThemeData(
        color: Colors.white,
        textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontSize: 15,
        )),
    inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        hintStyle: TextStyle(
          color: Colors.black26,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        )),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 3,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
      ),
    ),
    textTheme: TextTheme(
      labelLarge: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 1)
          .copyWith(color: Colors.black),
      labelMedium: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 1)
          .copyWith(color: Colors.black),
      labelSmall: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 1)
          .copyWith(color: Colors.black),
    ),
  );

  static final darkTheme = ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      cardColor: Colors.white,
      dialogBackgroundColor: Colors.white,
      popupMenuTheme: const PopupMenuThemeData(
          color: Colors.white,
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 15,
          )),
      inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
        color: Colors.black38,
        fontWeight: FontWeight.normal,
        fontSize: 15,
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // <-- Radius
          ),
        ),
      ));
}
