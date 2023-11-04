import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/small_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';

class AddedBookList extends StatelessWidget {
  const AddedBookList({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return UnconstrainedBox(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/insidebookslist");
        },
        child: BlackGreyGradientWidget(
            height: width / 1.9,
            width: width / 1.06,
            radius: 34,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: width / 8,
                      width: width / 1.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(color: GlobalColors.kViolet, width: 3),
                      ),
                      child: Text(
                        "RICH DAD POOR DAD",
                        style: TextStyle(
                            color: GlobalColors.kWhite.withOpacity(0.5),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SmallText(text: "15-1-2023"),
                    Container(
                      padding: const EdgeInsets.only(left: 13),
                      height: width / 4,
                      width: width / 2.1,
                      child: Text(
                        "Rich Dad Poor Dad is a 1997 book written by Robert T. Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets, real estate investing, ",
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          color: GlobalColors.kWhite.withOpacity(0.5),
                          fontSize: 11.5,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const CyanColoredText(text: "1 h 30 m", size: 18),
                    const SizedBox(
                      height: 5,
                    ),
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
                            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
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
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
