import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';

class DotsIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;


  const DotsIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(count, (index) {
        
        return Container(
          width: AppSizes.indicatorWidth,
          height: AppSizes.indicatorHeight,
          decoration: BoxDecoration(
            color: index == currentIndex ? ColorManager.primary : ColorManager.hover,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
