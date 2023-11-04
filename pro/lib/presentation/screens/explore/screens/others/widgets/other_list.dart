import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/normal_bold_subheading_text.dart';
import 'package:pro/global/widgets/texts/small_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';

class OtherList extends StatelessWidget {
  const OtherList({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/insideother");
      },
      child: BlackGreyGradientWidget(
        height: width,
        width: width / 1.2,
        radius: 30,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: width / 7.3,
                        width: width / 3,
                        decoration: BoxDecoration(
                          color: GlobalColors.kWhite.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Vikram 3",
                          style: TextStyle(
                            color: GlobalColors.kWhite.withOpacity(0.8),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const SmallText(text: "Epic"),
                      const SizedBox(
                        height: 13,
                      ),
                      const Text(
                        "High",
                        style: TextStyle(
                            color: GlobalColors.kOrange,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const NormalSubHeadingText(text: "Description"),
                      const SizedBox(
                        height: 13,
                      ),
                      SizedBox(
                        height: height / 9,
                        width: width / 2.5,
                        child: Text(
                          "A special agent investigates a murder committed by a masked group of serial killers. However, a tangled maze of clues soon leads him to the drug kingpin of Chennai...",
                          style: TextStyle(
                            color: GlobalColors.kWhite.withOpacity(0.5),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: height / 8,
                      ),
                      Container(
                        height: width / 3.2,
                        width: 1,
                        color: GlobalColors.kWhite.withOpacity(0.5),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: width / 5,
                        width: width / 3,
                        decoration: BoxDecoration(
                          color: GlobalColors.kWhite.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://i.ytimg.com/vi/gdSgDuO5PCE/maxresdefault.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: SmallText(text: "27-1-2023"),
                      ),
                      SizedBox(
                        height: height / 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SmallWithBoldText(text: "Topics"),
                              const SizedBox(
                                height: 14,
                              ),
                              Text(
                                "NA",
                                style: TextStyle(
                                    color: GlobalColors.kWhite.withOpacity(0.5),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SmallWithBoldText(text: "Tasks"),
                              const SizedBox(
                                height: 14,
                              ),
                              Text(
                                "NA",
                                style: TextStyle(
                                    color: GlobalColors.kWhite.withOpacity(0.5),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 16,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: width / 7.3,
                    width: width / 3,
                    decoration: BoxDecoration(
                      color: GlobalColors.kWhite.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "2 h 30 m",
                      style: TextStyle(
                        color: GlobalColors.kWhite.withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: width / 7.3,
                    width: width / 3,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          GlobalColors.kCyan,
                          GlobalColors.kGreen,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Start",
                      style: TextStyle(
                        color: GlobalColors.kBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
