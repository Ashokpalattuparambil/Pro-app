import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class GradientButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const GradientButtonWidget(
      {super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.width * 0.13;
    final double width = MediaQuery.of(context).size.width * 0.73;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            GlobalColors.kCyan,
            GlobalColors.kGreen,
          ],
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: TextButton(
        onPressed: callback,
        child: Text(
          text,
          style: const TextStyle(
              color: GlobalColors.kBlack, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
