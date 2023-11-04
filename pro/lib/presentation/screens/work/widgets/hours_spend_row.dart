import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class HoursSpendRow extends StatelessWidget {
  const HoursSpendRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "Total",
              style: TextStyle(
                  color: GlobalColors.kWhite.withOpacity(0.6),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "30 h 9 m",
              style: TextStyle(
                  color: GlobalColors.kCyan,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              "Today",
              style: TextStyle(
                  color: GlobalColors.kWhite.withOpacity(0.6),
                  fontSize: 12.5,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "4 h 20 m",
              style: TextStyle(
                  color: GlobalColors.kCyan,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
