import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class KcalInfoHomeWidget extends StatelessWidget {
  const KcalInfoHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          "3500kcal",
          style: TextStyle(
              color: GlobalColors.kCyan,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "Per day to achieve \n weight lose goal",
          style: TextStyle(
              color: GlobalColors.kWhite.withOpacity(0.3),
              fontSize: 11,
              fontWeight: FontWeight.bold),
        ),
        const Text(
          "15000kcal",
          style: TextStyle(
              color: GlobalColors.kCyan,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "Burn in 7 days to \n cross weight lose goal",
          style: TextStyle(
              color: GlobalColors.kWhite.withOpacity(0.3),
              fontSize: 11,
              fontWeight: FontWeight.bold),
        ),
        Column(
          children: const [
            Text(
              "Goal",
              style: TextStyle(
                  color: GlobalColors.kCyan,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "67 to 59 kg",
              style: TextStyle(
                  color: GlobalColors.kCyan,
                  fontSize: 11.5,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
