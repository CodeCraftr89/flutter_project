import 'package:flutter/material.dart';

class TColors{
  TColors._();
//App Basic Color
  static const Color primery = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFB0C7FF);


  //Gradient Color
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
    Color(0xFFff9a9a),
    Color(0xFFfad0c4),
    Color(0xFFfad0c4),
  ]);

  //text color
  static const Color textPrimery = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Color(0xFFFFFFFF);

  //background color
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primeryBackground = Color(0xFFF3F5FF);

  //background Container color
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = TColors.white;

  //button color
  static const Color buttonPrimery = Color(0xFFb68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  //Boader color
  static const Color borderPrimery = Color(0xFFb68ff);
  static const Color boaderSecondary = Color(0xFFE6E6E6);

  //Error and validation color
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  //natural color
  static const Color black = Color(0xFF232323);
  static const Color darkerGray = Color(0xFF4F4F4F);
  static const Color darkGray = Color(0xFF939393);
  static const Color gray = Color(0xFFE0E0E0);
  static const Color softGray = Color(0xFFF4F4F4);
  static const Color lightGray = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}