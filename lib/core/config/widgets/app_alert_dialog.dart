import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/widgets/app_elevated_button%20.dart';

class AppAlertDialog extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Widget content;

  const AppAlertDialog(
      {super.key, required this.title,required this.content, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: content,
      actions: [
        AppElevatedButton(text:"Confirm" , onPressed: onPressed),
      
        AppElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          text: "Cancel",
        ),
      ],
    );
  }
}
