import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final String path;
  final double width;
  final double higth;
  const AppLogo({
    super.key,
    required this.path,
    required this.higth,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(path,width: width,height: higth,);
  }
}
