import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class SmallWithBoldText extends StatelessWidget {
  final String text;
  const SmallWithBoldText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: GlobalColors.kWhite.withOpacity(0.5),
          fontSize: 15,
          fontWeight: FontWeight.bold),
    );
  }
}
