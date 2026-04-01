import 'package:flutter/material.dart';

class AppStatusBadge extends StatelessWidget {
  final String text;
  final Color color;
  final double radius;
  final double width;
  final double higth;

  const AppStatusBadge({
    super.key,
    required this.text,
    required this.color,
    required this.radius,
    required this.width,
    required this.higth,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: higth,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Text(
        text,
      ),
    );
  }
}