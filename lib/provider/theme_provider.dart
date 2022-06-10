import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ThemeProvider {
  ThemeMode themeMode = ThemeMode.dark;
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0x00201a31),
    appBarTheme: const AppBarTheme(color: Color(0x00201a31)),
    colorScheme: const ColorScheme.dark(),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white70,
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(color: kActiveColor),
  );
}
