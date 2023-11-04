import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class ContinueButtonWidget extends StatelessWidget {
  const ContinueButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        height: width / 10,
        width: width / 2.40,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              GlobalColors.kCyan,
              GlobalColors.kGreen,
            ],
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.play_circle),
            Text(
              "Continue",
              style: TextStyle(
                  color: GlobalColors.kBlack, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
