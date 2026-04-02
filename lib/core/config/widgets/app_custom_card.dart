import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';

class AppCustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double? radius;
  final double? elevation;

  const AppCustomCard({
    super.key,
    required this.child,
     this.color,
     this.radius,
     this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation??0.5,
      color: color??ColorManager.backgroundLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius??AppSizes.radiusMedium),
        
      ),
      child: child,
    );
  }
}