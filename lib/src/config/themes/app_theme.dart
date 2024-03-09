import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF15F5F),
        primaryColor: Colors.white,
        splashColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
        textTheme: const TextTheme(
          titleLarge:
              TextStyle(fontFamily: 'Akira', color: Colors.white, fontSize: 40),
          titleMedium:
              TextStyle(fontFamily: 'Akira', color: Colors.white, fontSize: 25),
          titleSmall:
              TextStyle(fontFamily: 'Akira', color: Colors.white, fontSize: 15),
          bodyLarge: TextStyle(fontFamily: 'Montserrat', color: Colors.white),
          headlineLarge: TextStyle(
              fontFamily: 'Montserrat', color: Colors.white, fontSize: 85),
          headlineMedium: TextStyle(
              fontFamily: 'Montserrat', color: Colors.white, fontSize: 40),
        ),
        useMaterial3: true);
  }
}
