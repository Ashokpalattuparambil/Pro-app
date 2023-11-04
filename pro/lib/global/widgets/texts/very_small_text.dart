import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class VerySmallText extends StatelessWidget {
  final String text;
  const VerySmallText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: GlobalColors.kWhite.withOpacity(0.6),
        fontSize: 11,
      ),
    );
  }
}
