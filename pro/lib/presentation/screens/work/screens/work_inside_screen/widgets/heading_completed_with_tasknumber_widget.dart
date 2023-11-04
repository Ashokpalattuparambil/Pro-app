import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class HeadingCompletedWithTaskNumberRow extends StatelessWidget {
  const HeadingCompletedWithTaskNumberRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Completed",
          style: TextStyle(
              color: GlobalColors.kGreen,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 9,
        ),
        CircleAvatar(
          backgroundColor: GlobalColors.kGrey.withOpacity(0.3),
          radius: 12,
          child: Text(
            "2",
            style: TextStyle(
                color: GlobalColors.kWhite.withOpacity(0.5),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
