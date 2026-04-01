import 'package:flutter/material.dart';

class AppSnackBar {
  // دالة ثابتة لعرض السناك بار
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
