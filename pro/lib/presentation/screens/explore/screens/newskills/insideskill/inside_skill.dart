import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/dark_violet_colored_text.dart';
import 'package:pro/global/widgets/texts/small_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';

class InsideSkill extends StatelessWidget {
  const InsideSkill({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return BackGroundWidget(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlackGreyGradientWidget(
            height: height / 1.2,
            width: width / 1.2,
            radius: 60,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const DarkVioletColoredText(text: "Photoshop", size: 25),
                  BlackGreyGradientWidget(
                    height: width / 12,
                    width: width / 3,
                    radius: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CyanColoredText(text: "Nov 19", size: 10),
                        SmallText(text: "to"),
                        CyanColoredText(text: "Dec 11", size: 10),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          SmallWithBoldText(text: "Days left"),
                          SizedBox(
                            height: 14,
                          ),
                          CyanColoredText(text: "26", size: 21),
                        ],
                      ),
                      Column(
                        children: const [
                          SmallWithBoldText(text: "From this task"),
                          SizedBox(
                            height: 14,
                          ),
                          CyanColoredText(text: "+300 points", size: 18),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: width / 5,
                    backgroundColor: GlobalColors.kCyan,
                    child: CircleAvatar(
                      radius: width / 5.5,
                      backgroundImage: const NetworkImage(
                        "https://static.techspot.com/articles-info/2250/images/2021-05-07-image-7.jpg",
                      ),
                    ),
                  ),
                  Container(
                    height: width / 2,
                    width: width / 2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: GlobalColors.kViolet, width: 5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const CyanColoredText(text: "0:45:37", size: 36),
                        Image.asset(
                          "images/timericon.png",
                          height: 52,
                          width: 52,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlackGreyGradientWidget(
                        height: width / 10,
                        width: width / 4.7,
                        radius: 30,
                        child: UnconstrainedBox(
                          child: Image.asset(
                            "images/editicon.png",
                            height: 17,
                            width: 17,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      BlackGreyGradientWidget(
                        height: width / 10,
                        width: width / 4.7,
                        radius: 30,
                        child: UnconstrainedBox(
                          child: Image.asset(
                            "images/completetaskicon.png",
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  BlackGreyGradientWidget(
                    height: width / 4.6,
                    width: width / 1.3,
                    radius: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: width / 8,
                          width: width / 8,
                          decoration: const BoxDecoration(
                            color: GlobalColors.kCyan,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            color: GlobalColors.kBlack,
                          ),
                        ),
                        const CyanColoredText(
                          text: "Start",
                          size: 20,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
