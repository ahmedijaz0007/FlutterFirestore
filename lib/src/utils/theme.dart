
import 'package:flutter/material.dart';

class  TAppTheme{
  TAppTheme._(); //Singleton
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,brightness: Brightness.light),
      useMaterial3: true,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,brightness: Brightness.dark),
    useMaterial3: true,
  );
}