import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';

class InsideOther extends StatelessWidget {
  const InsideOther({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return BackGroundWidget(
        child: Padding(
      padding: const EdgeInsets.all(13),
      child: BlackGreyGradientWidget(
        height: height / 1.2,
        width: width,
        radius: 60,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [],
          ),
        ),
      ),
    ),);
  }
}
