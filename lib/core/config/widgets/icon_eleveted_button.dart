import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class IconElevetedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? width;
  final double? height;

  const IconElevetedButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
     this.backgroundColor,
     this.width,
     this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??double.infinity,
      height: height??AppSizes.buttonHeight,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon,),
        label: Text(text,style: TextStyleExtension.buttonPrimary,),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor??ColorManager.primary,
        ),
      ),
    );
  }
}