import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;
  final String path;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.actions, required this.path ,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: Image.asset(path),
      actions: actions,
    );
  }

  }