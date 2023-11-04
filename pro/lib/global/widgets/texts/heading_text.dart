import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class HeadingTextWidget extends StatelessWidget {
  final String text;
  final double right;
  final double left;
  final double top;
  final double bottom;
  const HeadingTextWidget(
      {super.key,
      required this.text,
      required this.right,
      required this.left,
      required this.top,
      required this.bottom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: right, top: top, left: left, bottom: bottom),
      child: Text(
        text,
        style: const TextStyle(
            color: GlobalColors.kViolet,
            fontSize: 27,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
