import 'package:flutter/material.dart';


extension TextStyleExtension on TextStyle {
  /// ================= HEADINGS =================
  static const TextStyle h1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 30 / 18,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    height: 30 / 15,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  /// ================= BODY =================
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyRegular = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );

  /// ================= LABEL =================
  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
  );

  static const TextStyle labelRegular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 16 / 12,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w500,
    height: 14 / 8,
  );

  /// ================= BUTTON =================
  static const TextStyle buttonPrimary = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    height: 20 / 15,
  );

  static const TextStyle buttonSecondary = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 20 / 15,
  );

  static const TextStyle buttonSmall = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w500,
    height: 16 / 8,
  );

  static const TextStyle buttonNavBar = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
}