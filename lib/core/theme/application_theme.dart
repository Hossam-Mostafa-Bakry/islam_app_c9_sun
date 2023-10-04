import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  // static bool isDark = false;
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xFFB7935F),
      seedColor: const Color(0xFFB7935F),
      onSecondary: const Color(0xFF242424),
      onPrimary: const Color(0xFFB7935F),
      onBackground: Colors.white,
    ),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFB7935F),
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 32,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 28,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xFFB7935F).withOpacity(0.7),
    ),
    dividerColor: const Color(0xFFB7935F),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFF141A2E),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        primary: const Color(0xFF141A2E),
        seedColor: const Color(0xFF141A2E),
        onSecondary: const Color(0xFFFACC1D),
        onPrimary: const Color(0xFFFACC1D),
        onBackground: const Color(0xFF141A2E)),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF141A2E),
      selectedIconTheme: IconThemeData(
        color: const Color(0xFFFACC1D),
        size: 32,
      ),
      selectedItemColor: const Color(0xFFFACC1D),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 28,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xFF141A2E).withOpacity(0.7),
    ),
    dividerColor: const Color(0xFFFACC1D),
  );
}
