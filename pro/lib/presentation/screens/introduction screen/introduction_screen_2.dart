import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/gradient_button.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';

class IntroductionScreen2 extends StatelessWidget {
  const IntroductionScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const HeadingTextWidget(
              text: "Custom workout", right: 115, left: 0, top: 40, bottom: 0),
          Image.asset("images/intro2asset1.png"),
          const HeadingTextWidget(
              text: "Skill Boost", right: 180, left: 0, top: 0, bottom: 0),
          Image.asset("images/intro2asset2.png"),
          const Text(
            "Work, tasks and more....",
            style: TextStyle(
              fontSize: 20,
              color: GlobalColors.kViolet,
              fontWeight: FontWeight.bold,
            ),
          ),
          GradientButtonWidget(
              text: "Done",
              callback: () {
                Navigator.pushNamed(context, "/introductionscreen3");
              })
        ],
      ),
    );
  }
}
