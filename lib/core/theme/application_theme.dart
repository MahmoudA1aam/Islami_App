import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        bodySmall: GoogleFonts.cinzelDecorative(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      primaryColor: const Color(0xFFB7935F),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFB7935F),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 32,
          color: Colors.black,
        ),
        unselectedIconTheme: IconThemeData(
          size: 28,
          color: Colors.white,
        ),
      ),
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)));
  static ThemeData darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)));
}
