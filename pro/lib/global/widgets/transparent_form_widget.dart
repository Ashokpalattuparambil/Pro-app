import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class TransparentFormWidget extends StatelessWidget {
  final double height;
  final Widget child;
  const TransparentFormWidget(
      {super.key, required this.height, required this.child});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width - 30;
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: UnconstrainedBox(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: GlobalColors.kWhite.withOpacity(0.12),
            borderRadius: BorderRadius.circular(50),
          ),
          child: child,
        ),
      ),
    );
  }
}
