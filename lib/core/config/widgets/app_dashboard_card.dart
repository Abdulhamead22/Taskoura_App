import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/config/widgets/app_custom_card.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class AppDashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? color;

  const AppDashboardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AppCustomCard(
      child: Column(
        children: [
          Icon(
            icon,
            color: color ?? ColorManager.primary,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(title,style: TextStyleExtension.h4.copyWith(color: ColorManager.submitButtonText),),
          const SizedBox(
            height: 5,
          ),
          Text(subtitle,style: TextStyleExtension.labelRegular.copyWith(color: ColorManager.secondaryText),),
        ],
      ),
    );
  }
}
