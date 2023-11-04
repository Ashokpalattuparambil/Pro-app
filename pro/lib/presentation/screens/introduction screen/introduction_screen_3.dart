import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/gradient_button.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';

class IntroductionScreen3 extends StatelessWidget {
  const IntroductionScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset("images/intro3asset1.png"),
        ),
        const HeadingTextWidget(
            text: "Progress", right: 175, left: 0, top: 55, bottom: 0),
        Text(
          "Monitor your total progress with radar \n chart and each level have each names \n and card design to represent your dedication \n  as like as game cards.",
          style: TextStyle(
            color: GlobalColors.kWhite.withOpacity(0.5),
          ),
        ),
        GradientButtonWidget(
            text: "Done",
            callback: () {
              Navigator.pushNamed(context, "/introductionscreen4");
            })
      ],
    ));
  }
}
