import 'package:flutter/material.dart';

class ApppLinearProgressCard extends StatelessWidget {
  final double value;

  const ApppLinearProgressCard({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(value: value);
  }
}