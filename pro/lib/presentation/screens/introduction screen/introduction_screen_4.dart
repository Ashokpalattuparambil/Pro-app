import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/gradient_button.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';

class IntroductionScreen4 extends StatelessWidget {
  const IntroductionScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset("images/intro4asset1.png"),
        const HeadingTextWidget(
            text: "Cards", right: 165, left: 0, top: 10, bottom: 0),
        Text(
          "Different types of card varies depend \n on the total pro points you earned",
          style: TextStyle(
            color: GlobalColors.kWhite.withOpacity(0.5),
          ),
        ),
        GradientButtonWidget(
            text: "Done",
            callback: () {
              Navigator.pushNamed(context, "/selectionscreen");
            })
      ],
    ));
  }
}
