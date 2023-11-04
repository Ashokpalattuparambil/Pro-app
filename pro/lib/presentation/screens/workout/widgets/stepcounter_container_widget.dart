import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class StepCounterContainerWidget extends StatelessWidget {
  const StepCounterContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return UnconstrainedBox(
      child: Container(
        height: width / 2,
        width: width / 1.8,
        decoration: BoxDecoration(
          color: GlobalColors.kWhite.withOpacity(0.08),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: GlobalColors.kBlack.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 50,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/stepsicon.png",
              height: 90,
              width: 90,
            ),
            const SizedBox(height: 8),
            const Text(
              "9340",
              style: TextStyle(
                  color: GlobalColors.kCyan,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Steps",
              style: TextStyle(
                  color: GlobalColors.kViolet,
                  fontSize: 12.5,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
