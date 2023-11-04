import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class BlackGreyGradientWidget extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final Widget child;
  const BlackGreyGradientWidget({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            GlobalColors.kBlack.withOpacity(0.4),
            GlobalColors.kGrey.withOpacity(0.3),
          ],
        ),
        boxShadow: [
          BoxShadow(
              color: GlobalColors.kBlack.withOpacity(0.25),
              offset: const Offset(4, 4),
              blurRadius: 50,
              spreadRadius: 4),
        ],
      ),
      child: child,
    );
  }
}
