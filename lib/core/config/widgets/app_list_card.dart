import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/widgets/app_custom_card.dart';
import 'package:flutter_application_1/core/config/widgets/app_linear_progress_card.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class AppProjectListCard extends StatelessWidget {
  final String title;
  final double progress; 
  const AppProjectListCard({super.key, required this.title, required this.progress});

  @override
  Widget build(BuildContext context) {
    return AppCustomCard(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.buttonPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style:AppTextStyles.headingMedium),
            const SizedBox(height: AppSizes.buttonPadding),
            AppLinearProgressCard(value: progress),
          ],
        ),
      ),
    );
  }
}
