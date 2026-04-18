import 'package:flutter/material.dart';

class AppLinearProgressCard extends StatelessWidget {
  final double value;

  const AppLinearProgressCard({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(value: value);
  }
}