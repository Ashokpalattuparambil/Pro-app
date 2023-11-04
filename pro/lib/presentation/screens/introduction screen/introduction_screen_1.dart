import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/gradient_button.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';

class IntroductionScreen1 extends StatelessWidget {
  const IntroductionScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset(
            "images/intro1asset1.png",
            height: 300,
            width: 300,
          ),
        ),
        const HeadingTextWidget(
          text: "Pro",
          right: 220,
          left: 0,
          top: 25,
          bottom: 0,
        ),
        Text(
          "A Pro man need Pro app. Yes! you got right, \n You need it! That's why you here! \n Pro help you to Build a strong managed life \n  with health tracking feature. \n Pro make your life easy and organized. \n Monitor your each status with Pro !",
          style: TextStyle(
            color: GlobalColors.kWhite.withOpacity(0.5),
          ),
        ),
        GradientButtonWidget(
            text: "Start",
            callback: () {
              Navigator.pushNamed(context, "/introductionscreen2");
            })
      ],
    ));
  }
}
