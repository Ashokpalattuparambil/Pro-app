import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class HeadingNotYetStartedWithTaskNumberRow extends StatelessWidget {
  const HeadingNotYetStartedWithTaskNumberRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Not yet started",
          style: TextStyle(
              color: GlobalColors.kPink,
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
            "4",
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
