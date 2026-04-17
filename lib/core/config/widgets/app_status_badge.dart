import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class AppStatusBadge extends StatelessWidget {
  final String text;
  final Color? color;
  final double? radius;
  final double? width;
  final double? height;

  const AppStatusBadge({
    super.key,
    required this.text,
    this.color,
    this.radius,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.symmetric(
      horizontal: AppSizes.paddingSmall,
      vertical: 4,
    ),
      width: width ?? double.infinity,
      height: height ?? AppSizes.priorityHeight,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius ?? AppSizes.radiusLarge),
      ),
      child: Text(
        text,
              textAlign: TextAlign.center,

        style: AppTextStyles.buttonLabel
            .copyWith(color: color ?? ColorManager.submitButtonText),
      ),
    );
  }
}
