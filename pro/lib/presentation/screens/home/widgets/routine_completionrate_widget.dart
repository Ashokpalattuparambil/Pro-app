import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class RoutineCompletionRateWidget extends StatelessWidget {
  const RoutineCompletionRateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 2.3;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              width: width,
              decoration: BoxDecoration(
                color: GlobalColors.kWhite.withOpacity(0.09),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                "59 %",
                style: TextStyle(
                    color: GlobalColors.kCyan,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "completed",
              style: TextStyle(
                  color: GlobalColors.kWhite.withOpacity(0.2),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                GlobalColors.kBlack.withOpacity(0.4),
                GlobalColors.kGrey.withOpacity(0.3),
              ],
            ),
          ),
        )
      ],
    );
  }
}
