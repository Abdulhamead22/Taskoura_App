import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';

class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<BottomNavigationBarItem> items;
  const AppBottomNavBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: items,
      backgroundColor: ColorManager.primary,
      unselectedItemColor: ColorManager.backgroundLight,
    );
  }
}
