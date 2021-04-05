import 'package:flutter/material.dart';
import 'colors.dart';

class TextStyles {
  static const defaultR = TextStyle();
  static const defaultB = TextStyle(fontWeight: FontWeight.bold);
  static const defaultI = TextStyle(fontWeight: FontWeight.w300);

  static const title = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
  static const header = TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
  static const header1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  static const message = TextStyle();
  static const body = TextStyle(fontSize: 13);

  static FontWeight _toFontWeight(bool isBold) => isBold ? FontWeight.w500 : FontWeight.normal;
}

class DecorationStyle {
  static const backgroundGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: AppColors.backgroundGradient,
  );
}
