import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/config/widgets/app_custom_card.dart';
import 'package:flutter_application_1/core/config/widgets/app_status_badge.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class AppTaskListTile extends StatelessWidget {
  final String title;
  final String subTitle;

  final String status;
  final Color statusColor;
  const AppTaskListTile({super.key, required this.title, required this.status, required this.statusColor, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return AppCustomCard(
      child: ListTile(
        title: Text(title,style: AppTextStyles.bodySmall.copyWith(
  fontWeight: FontWeight.bold,
  color: ColorManager.primary,
),),
        subtitle: Text(subTitle,style: AppTextStyles.bodySmall.copyWith(color: ColorManager.secondaryText),),

        trailing: AppStatusBadge(text: status,),
      ),
    );
  }
}