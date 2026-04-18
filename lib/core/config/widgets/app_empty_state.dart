import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/config/widgets/app_elevated_button%20.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class AppEmptyState extends StatelessWidget {
  final String title;

  final String subTitle;

  final String path;
  final String textButton;
  final VoidCallback onPressed;

  const AppEmptyState({
    super.key,
    required this.title,
    required this.subTitle,
    required this.path,
    required this.textButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(path),
        const SizedBox(
          height: AppSizes.paddingSmall,
        ),
        Text(
          title,
          style: AppTextStyles.emptyState
              .copyWith(color: ColorManager.primary),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subTitle,
          style: AppTextStyles.bodySmall
              .copyWith(color: ColorManager.secondaryText),
        ),
        AppElevatedButton(
          text: textButton,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
