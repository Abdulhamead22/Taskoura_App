import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  final double? width;
  final double? height;
    final double? borderRadius;
  final double? padding;


  const AppElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
     this.backgroundColor,
     this.textColor,
     this.width,
     this.height,
     this.borderRadius,
     this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity ,
      height: height ?? AppSizes.buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor??ColorManager.primary,
      padding:  EdgeInsets.all(padding??AppSizes.buttonPadding),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius??AppSizes.radiusSmall)
      )
        ),
        onPressed: onPressed,
        child: Text(text,style: AppTextStyles.buttonLabel.copyWith(color: textColor??ColorManager.backgroundLight),),
      ),
    );
  }
}