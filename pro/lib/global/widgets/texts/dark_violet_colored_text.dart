import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class DarkVioletColoredText extends StatelessWidget {
  final String text;
  final double size;
  const DarkVioletColoredText(
      {super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: GlobalColors.kDarkViolet,
          fontSize: size,
          fontWeight: FontWeight.bold),
    );
  }
}
