import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';

class OnboardingContent extends StatelessWidget {
  final String path;
  final String title;
  final TextStyle? style;
    final double? width;
  final double? higth;

  const OnboardingContent({
    super.key,
    required this.path,
    required this.title,
     this.style,
     this.higth,
     this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(path, width: width??double.infinity, height: higth??AppSizes.boardingHigth,),
        const SizedBox(height: 20),
        Text(title, style: style),
        const SizedBox(height: 10),
      ],
    );
  }
}
