import 'package:flutter/material.dart';

abstract class AppTheme {
  static const background = Color.fromRGBO(28, 28, 28, 1);
  static const elements = Color.fromARGB(248, 255, 255, 255);

  static ThemeData get light {
    return ThemeData(
        // scaffoldBackgroundColor: const Color(0xFFF15F5F),
        scaffoldBackgroundColor: background,
        primaryColor: elements,
        hintColor: background,
        splashColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: elements),
        textTheme: const TextTheme(
          titleLarge:
              TextStyle(fontFamily: 'Akira', color: elements, fontSize: 40),
          titleMedium:
              TextStyle(fontFamily: 'Akira', color: elements, fontSize: 25),
          titleSmall:
              TextStyle(fontFamily: 'Akira', color: elements, fontSize: 15),
          bodyLarge: TextStyle(fontFamily: 'Montserrat', color: elements),
          headlineLarge: TextStyle(
              fontFamily: 'Montserrat', color: elements, fontSize: 85),
          headlineMedium: TextStyle(
              fontFamily: 'Montserrat', color: elements, fontSize: 40),
        ),
        useMaterial3: true);
  }
}
