import 'package:flutter/material.dart';

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
        TextButton(
          onPressed: onPressed,
          child: const Text("Confirm"),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Cancel"),
        ),
      ],
    );
  }
}
