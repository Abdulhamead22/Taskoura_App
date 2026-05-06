import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/config/widgets/onboarding_content.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/model/boarding_model.dart';

class BuildBoardingItem extends StatelessWidget {
  const BuildBoardingItem({
    super.key,
    required this.boardingModel,
    required this.isLast,
  });

  final BoardingModel boardingModel;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return OnboardingContent(
      path: boardingModel.image,
      title: boardingModel.title,
      subtitle: boardingModel.body,
      styleSubtitle: AppTextStyles.bodyMedium.copyWith(
        color: isLast
            ? ColorManager.backgroundLight
            : ColorManager.secondaryText,
      ),
    );
  }
}