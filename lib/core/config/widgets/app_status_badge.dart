import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class AppStatusBadge extends StatelessWidget {
  final String text;
  final Color? color;
  final double? radius;
  final double? width;
  final double? higth;

  const AppStatusBadge({
    super.key,
    required this.text,
     this.color,
     this.radius,
     this.width,
     this.higth,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width??AppSizes.priorityWidth,
      height: higth??AppSizes.priorityHeight,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius??AppSizes.radiusLarge),
      ),
      child: Text(
        text,
        style: TextStyleExtension.buttonSmall.copyWith(color:color?? ColorManager.submitButtonText),
      ),
    );
  }
}