import 'package:flutter/material.dart';

class AppRichText extends StatelessWidget {
  final String text;
  final String starText;
  final TextStyle textStyle;
    final TextStyle starTextStyle;

  const AppRichText({super.key, required this.text, required this.starText, required this.textStyle, required this.starTextStyle});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: textStyle,
        children:  <TextSpan>[
          TextSpan(
            text: starText,
            style: starTextStyle),
        ],
      ),
    );
  }
}
