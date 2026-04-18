import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class OnboardingContent extends StatelessWidget {
  final String path;
  final String title;
  final TextStyle? style;
  final String? subtitle;
  final double? width;
  final double? height;

  const OnboardingContent({
    super.key,
    required this.path,
    required this.title,
    this.style,
    this.subtitle,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          path,
          width: width ?? double.infinity,
          height: height ?? AppSizes.boardingheight,
        ),
        const SizedBox(height: AppSizes.paddingMedium),
        Text(title, style: style??AppTextStyles.headingMedium,),
        const SizedBox(height: AppSizes.paddingSmall),
          Text(
            subtitle!,
            textAlign: TextAlign.center,
            style: AppTextStyles.bodySmall,
          ),
        const SizedBox(height: AppSizes.buttonPadding),
      ],
    );
  }
}
