import 'package:flutter/material.dart';

final ThemeData astronomyTheme = ThemeData(
  // Primary colors inspired by space
  primaryColor: Color(0xff0e254b), // Deep Blue
  dividerColor: Color(0xFFFFD700), // Gold

  // Background colors
  scaffoldBackgroundColor: Color(0xff03172c), // Dark Blue
  cardColor: Color(0xff082957), // Slightly lighter blue

  // Text styles
  textTheme: TextTheme(
    headline6: TextStyle(
      color: Colors.white, // White text
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyText2: TextStyle(
      color: Colors.white70, // Slightly lighter text
      fontSize: 16,
    ),
  ),

  // Elevated button style
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Color(0xFFFFD700), // Gold button background
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  // AppBar theming
  appBarTheme: AppBarTheme(
      color: Color(0xff03172c),
      foregroundColor: Colors.greenAccent // Deep Blue app bar
      ),

  // Apply other customizations as needed
);
