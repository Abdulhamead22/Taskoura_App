import 'package:flutter/material.dart';

class IconElevetedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double width;
  final double height;

  const IconElevetedButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    required this.backgroundColor,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}