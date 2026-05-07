import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';

class AppLogo extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  const AppLogo({
    super.key,
    required this.path,
     this.height,
     this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width??AppSizes.logoWidth,
      height: height??AppSizes.logoWidth,
    );
  }
}
