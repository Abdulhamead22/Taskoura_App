import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/config/widgets/app_custom_card.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class ProfileOptionItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final double? size;
  const ProfileOptionItem({super.key, 
  required this.title, required this.icon, this.size});

  @override
  Widget build(BuildContext context) {
    return AppCustomCard(
      child: ListTile(
        leading: Icon(
          icon,
          color: ColorManager.submitButtonText,
          size: size ?? AppSizes.iconSmall,
        ),
        title: Text(title,style: AppTextStyles.headingLarge.copyWith(color: ColorManager.submitButtonText),),
      ),
    );
  }
}
