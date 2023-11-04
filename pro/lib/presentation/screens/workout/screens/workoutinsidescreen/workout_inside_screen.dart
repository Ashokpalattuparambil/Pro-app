import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/dark_violet_colored_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';

class WorkoutInsideScreen extends StatelessWidget {
  const WorkoutInsideScreen({super.key});

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
              const DarkVioletColoredText(
                text: "Jumping Jacks",
                size: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const SmallWithBoldText(text: "Gradual \nincrease"),
                      const SizedBox(
                        height: 12,
                      ),
                      Image.asset(
                        "images/gradualincreaseicon.png",
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const CyanColoredText(text: "+10 %", size: 15),
                    ],
                  ),
                  Column(
                    children: [
                      const SmallWithBoldText(text: "Expected \nkcal burn"),
                      const SizedBox(
                        height: 12,
                      ),
                      Image.asset(
                        "images/burnedicon.png",
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const CyanColoredText(text: "310 kcal", size: 15),
                    ],
                  ),
                ],
              ),
              const CircleAvatar(
                backgroundColor: GlobalColors.kCyan,
                radius: 90,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.themanual.com/wp-content/uploads/sites/9/2022/12/man-doing-jumping-jacks.jpg?p=1"),
                  radius: 85,
                ),
              ),
              BlackGreyGradientWidget(
                height: width / 5,
                width: width / 1.8,
                radius: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UnconstrainedBox(
                      child: Image.asset(
                        "images/timericon.png",
                        height: 52,
                        width: 52,
                      ),
                    ),
                    SizedBox(
                      width: width / 18,
                    ),
                    const CyanColoredText(
                      text: "0:45:37",
                      size: 28,
                    )
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
                height: width / 4,
                width: width / 4,
                radius: 40,
                child: UnconstrainedBox(
                  child: Image.asset(
                    "images/pauseicon.png",
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
