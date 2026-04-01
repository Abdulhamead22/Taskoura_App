import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/widgets/app_custom_card.dart';

class AppDashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final double radius;
  final double elevation;

  const AppDashboardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
      required this.color,
    required this.radius,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return AppCustomCard(
      color: color,
      radius: radius,
      elevation: elevation,
      child: Column(
        children: [
          Icon(icon),
          const SizedBox(height: 5,),
          Text(title),
            const SizedBox(height: 5,),
          Text(subtitle),
        ],
      ),
    );
  }
}