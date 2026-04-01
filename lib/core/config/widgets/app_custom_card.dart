import 'package:flutter/material.dart';

class AppCustomCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final double radius;
  final double elevation;

  const AppCustomCard({
    super.key,
    required this.child,
    required this.color,
    required this.radius,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}