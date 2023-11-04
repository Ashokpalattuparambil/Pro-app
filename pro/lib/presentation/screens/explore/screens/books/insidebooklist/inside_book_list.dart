import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/small_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';

class InsideBooksList extends StatelessWidget {
  const InsideBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return BackGroundWidget(
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: BlackGreyGradientWidget(
          height: height / 1.2,
          width: width,
          radius: 60,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: width / 8.4,
                          width: width / 2.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: GlobalColors.kViolet, width: 3),
                          ),
                          child: Text(
                            "RICH DAD POOR DAD",
                            style: TextStyle(
                                color: GlobalColors.kWhite.withOpacity(0.5),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: width / 5),
                        const SmallText(text: "15-1-2023"),
                        const SizedBox(height: 20),
                        const SmallWithBoldText(text: "Completed pages"),
                        const SizedBox(height: 20),
                        const CyanColoredText(text: "207", size: 18),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CyanColoredText(text: "1 h 30 m", size: 17),
                        const SizedBox(height: 24),
                        Container(
                          alignment: Alignment.bottomCenter,
                          height: width / 3,
                          width: width / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://wtfpropertyinvesting.com/wp-content/uploads/2022/02/the-beginners-guide-to-personal-finance-part-1-rich-dad-robert-kiyosaki-1024x536.jpeg"),
                                fit: BoxFit.cover),
                          ),
                          child: UnconstrainedBox(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                                child: Container(
                                  height: width / 8,
                                  width: width / 3,
                                  decoration: BoxDecoration(
                                    color: GlobalColors.kWhite.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "images/bookicon.png",
                                        height: 32,
                                        width: 25,
                                      ),
                                      Text(
                                        "Pages",
                                        style: TextStyle(
                                            color: GlobalColors.kWhite
                                                .withOpacity(0.5),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SmallWithBoldText(text: "210"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BlackGreyGradientWidget(
                              height: width / 12,
                              width: width / 6,
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
                              height: width / 12,
                              width: width / 6,
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
                      ],
                    )
                  ],
                ),
                const SmallText(
                  text:
                      "Rich Dad Poor Dad is a 1997 book written by Robert T. Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets, real estate investing, starting and owning businesses, as well as increasing one's financial intelligence.",
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
      ),
    );
  }
}
