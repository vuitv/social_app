import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color backgroundColor = const Color(0xFFFFFFFF);

  static const List<Color> backgroundGradient = <Color>[colorPrimary, lightAccent];

  static const MaterialColor colorPrimary = MaterialColor(
    _blueGreyPrimaryValue,
    <int, Color>{
      50: Color(0xFFECEFF1),
      100: Color(0xFFCFD8DC),
      200: Color(0xFFB0BEC5),
      300: Color(0xFF90A4AE),
      400: Color(0xFF78909C),
      500: Color(_blueGreyPrimaryValue),
      600: Color(0xFF546E7A),
      700: Color(0xFF455A64),
      800: Color(0xFF37474F),
      900: Color(0xFF263238),
    },
  );
  static const int _blueGreyPrimaryValue = 0xFF607D8B;

  static const MaterialAccentColor lightAccent = MaterialAccentColor(
    _lightBlueAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFF80D8FF),
      200: Color(_lightBlueAccentPrimaryValue),
      400: Color(0xFF00B0FF),
      700: Color(0xFF0091EA),
    },
  );
  static const int _lightBlueAccentPrimaryValue = 0xFF40C4FF;

  static const MaterialColor accent = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF1F0),
      100: Color(0xFFFFF1F0),
      200: Color(0xFFFEE0DC),
      300: Color(0xFFFAAA9E),
      400: Color(0xFFF56B56),
      500: Color(_redPrimaryValue),
      600: Color(0xFFCD280E),
      700: Color(0xFFB31D09),
      800: Color(0xFF931206),
      900: Color(0xFF700700),
    },
  );
  static const int _redPrimaryValue = 0xFFEC3713;

  static const Color ceruleanBlueColor = Color.fromRGBO(51, 100, 183, 1);
}
