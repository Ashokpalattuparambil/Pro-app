import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class CyanColoredText extends StatelessWidget {
  final String text;
  final double size;
  const CyanColoredText({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: GlobalColors.kCyan,
          fontSize: size,
          fontWeight: FontWeight.bold),
    );
  }
}
