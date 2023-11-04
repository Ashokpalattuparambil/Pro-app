import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class DateSwitchingWidget extends StatelessWidget {
  const DateSwitchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Friday,",
          style: TextStyle(
              color: GlobalColors.kCyan,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        const Text(
          "dec",
          style: TextStyle(
              color: GlobalColors.kCyan,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        const Icon(
          Icons.arrow_back,
          color: GlobalColors.kCyan,
        ),
        Container(
          alignment: Alignment.center,
          height: 25,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              colors: [
                GlobalColors.kCyan,
                GlobalColors.kGreen,
              ],
            ),
          ),
          child: const Text(
            "9",
            style: TextStyle(
                color: GlobalColors.kBlack,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(
          Icons.arrow_forward,
          color: GlobalColors.kCyan,
        ),
      ],
    );
  }
}
