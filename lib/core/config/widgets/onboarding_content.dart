import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String path;
  final String title;
  final TextStyle style;
    final double width;
  final double higth;

  const OnboardingContent({
    super.key,
    required this.path,
    required this.title,
    required this.style,
    required this.higth,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(path, width: width, height: higth,),
        const SizedBox(height: 20),
        Text(title, style: style),
        const SizedBox(height: 10),
      ],
    );
  }
}
