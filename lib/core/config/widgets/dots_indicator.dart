import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';

class DotsIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;
  final Color? color;

  const DotsIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        bool isActive = index == currentIndex;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300), // مدة الحركة
          curve: Curves.easeInOut, // نوع الحركة (ناعمة)
          width: isActive
              ? AppSizes.indicatorWidth
              : AppSizes.indicatorHeight, // النقطة النشطة تكون أعرض
          height: AppSizes.indicatorHeight,
          margin:
              const EdgeInsets.symmetric(horizontal: AppSizes.paddingVerySmall),
          decoration: BoxDecoration(
            color:
                isActive ? color ?? ColorManager.primary : ColorManager.hover,
            // نستخدم BorderRadius بدلاً من circle لأن العرض يتغير
            borderRadius: BorderRadius.circular(AppSizes.indicatorHeight / 2),
          ),
        );
      }),
    );
  }
}
