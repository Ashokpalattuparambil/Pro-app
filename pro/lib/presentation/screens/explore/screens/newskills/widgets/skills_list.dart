import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/dark_violet_colored_text.dart';

class SkillList extends StatelessWidget {
  const SkillList({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        UnconstrainedBox(
          child: InkWell(
            onTap: (() {
              Navigator.pushNamed(context, "/insideskill");
            }),
            child: BlackGreyGradientWidget(
              height: width / 2.2,
              width: width / 3.5,
              radius: 60,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const DarkVioletColoredText(text: "Photoshop", size: 13),
                      const CyanColoredText(text: "+300 points", size: 8),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: width / 5.4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: GlobalColors.kCyan, width: 2),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(5.5),
                          alignment: Alignment.center,
                          height: width / 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: GlobalColors.kViolet, width: 5),
                          ),
                          child: const Text(
                            "5 day\n 12 h\n 13 m\n",
                            style: TextStyle(
                              color: GlobalColors.kWhite,
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: width / 2.8,
                    left: width / 10,
                    child: UnconstrainedBox(
                      child: Container(
                        height: width / 12,
                        width: width / 12,
                        decoration: const BoxDecoration(
                          color: GlobalColors.kCyan,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          color: GlobalColors.kBlack,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Container(
          height: width / 3,
          width: width / 11,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                GlobalColors.kCyan,
                GlobalColors.kGreen,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "nov \n 19",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "to",
                style: TextStyle(
                  color: GlobalColors.kDarkViolet,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "dec \n 11",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
