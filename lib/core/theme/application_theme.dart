import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static bool isDark = true;
  static ThemeData lightTheme = ThemeData(
      dividerColor: const Color(0xFFB7935F),
      colorScheme: ColorScheme.fromSeed(
          primary: const Color(0xFFB7935F),
          onSecondary: const Color(0xFFB7935F),
          secondary: Colors.black,
          secondaryContainer: Colors.white,
          onSecondaryContainer: Colors.black,
          onSurface: Colors.black,
          surface: Colors.white,
          seedColor: const Color(0xFFB7935F)),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
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
      dividerColor: const Color(0xFFFACC1D),
      colorScheme: ColorScheme.fromSeed(
          primary: const Color(0xFF141A2E),
          surface: const Color(0xFFFACC1D),
          onSecondaryContainer: const Color(0xFFFACC1D),
          secondary: const Color(0xFFFFFFFF),
          onSurface: const Color(0xFFFACC1D),
          onSecondary: const Color(0xFFFACC1D),
          secondaryContainer: const Color(0xFF141A2E),
          seedColor: const Color(0xFF141A2E)),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.transparent),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.cinzelDecorative(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF141A2E),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFB7935F),
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 32,
          color: Color(0xFFB7935F),
        ),
        unselectedIconTheme: IconThemeData(
          size: 28,
          color: Colors.white,
        ),
      ),
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)));
}
