import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;
  final Color colorSelect;
  final Color colorNotSelect;


  const DotsIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
     required this.colorSelect,
      required this.colorNotSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(count, (index) {
        return Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: index == currentIndex ? colorSelect : colorNotSelect,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
