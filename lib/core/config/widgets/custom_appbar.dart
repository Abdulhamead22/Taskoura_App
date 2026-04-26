import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final String? path;
  final Color? backgroundColor;

  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.path,
    this.backgroundColor,
  });

@override
Widget build(BuildContext context) {
  return AppBar(
    backgroundColor: backgroundColor, 
    title: Text(
      title ?? '',
      style: AppTextStyles.headingLarge.copyWith(color: ColorManager.submitButtonText),
    ),
    leading: path != null ? Image.asset(path!) : null, 
    actions: actions, 
  );
}


// to apply use of appBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
