import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/very_small_text.dart';

class HeadingAndSubHeadingWithPauseButtonRow extends StatelessWidget {
  const HeadingAndSubHeadingWithPauseButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: const [
            Text(
              "Research",
              style: TextStyle(
                  color: GlobalColors.kWhite,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7,
            ),
            VerySmallText(text: "15-1-2023"),
            SizedBox(
              height: 7,
            ),
            Text(
              "High",
              style: TextStyle(
                  color: GlobalColors.kOrange,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        BlackGreyGradientWidget(
          height: width / 5.2,
          width: width / 3.8,
          radius: 30,
          child: UnconstrainedBox(
            child: Image.asset(
              "images/pauseicon.png",
              height: 57,
              width: 57,
            ),
          ),
        )
      ],
    );
  }
}
