import 'package:flutter/material.dart';


extension TextStyleExtension on TextStyle {
  /// ================= HEADINGS =================
  static const TextStyle h1 = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 30 / 18,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 15,
    fontWeight: FontWeight.w600,
    height: 30 / 15,
  );

  static const TextStyle h3 = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle h4 = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  /// ================= BODY =================
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyRegular = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );

  /// ================= LABEL =================
  static const TextStyle labelLarge = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
  );

  static const TextStyle labelRegular = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 16 / 12,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 8,
    fontWeight: FontWeight.w500,
    height: 14 / 8,
  );

  /// ================= BUTTON =================
  static const TextStyle buttonPrimary = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 15,
    fontWeight: FontWeight.w700,
    height: 20 / 15,
  );

  static const TextStyle buttonSecondary = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 20 / 15,
  );

  static const TextStyle buttonSmall = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 8,
    fontWeight: FontWeight.w500,
    height: 16 / 8,
  );

  static const TextStyle buttonNavBar = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle emptyState = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
}