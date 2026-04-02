import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/widgets/app_elevated_button%20.dart';

class AppEmptyState extends StatelessWidget {
    final String title;
      final TextStyle titleStyle;

      final String subTitle;
      final TextStyle subTitleStyle;

  final String path;
    final String textButton;
      final VoidCallback onPressed;

          final Color backgroundColor;
            final double width;
  final double height;





  const AppEmptyState({super.key, required this.title, required this.titleStyle, required this.subTitle, required this.subTitleStyle, required this.path, required this.textButton, required this.onPressed, required this.backgroundColor, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(path),
        const SizedBox(height: 8,),
        Text(title,style: titleStyle,),
        const SizedBox(height: 5,),
        Text(subTitle,style: subTitleStyle,),
        AppElevatedButton(
          text: textButton, 
          onPressed: onPressed,
           backgroundColor: backgroundColor,
            width: width, 
            height: height),
      
      ],
    );
  }
}