import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class NormalSubHeadingText extends StatelessWidget {
  final String text;
  const NormalSubHeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: GlobalColors.kWhite.withOpacity(0.5),
        fontSize: 22,
      ),
    );
  }
}
