import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class OtherAddButtonRow extends StatelessWidget {
  const OtherAddButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        const Text(
          "Other",
          style: TextStyle(
              color: GlobalColors.kCyan,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Container(
          height: 42,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                GlobalColors.kCyan,
                GlobalColors.kGreen,
              ],
            ),
          ),
          child: const Icon(
            Icons.add,
            color: GlobalColors.kBlack,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
