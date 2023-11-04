import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/normal_bold_subheading_text.dart';

class InsideCreative extends StatelessWidget {
  const InsideCreative({super.key});

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
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: height / 4.4,
                  width: width / 1.1,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://www.culturepartnership.eu/upload/news/5d280ec23e2d8.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: GlobalColors.kViolet, width: 2),
                  ),
                ),
                Text(
                  "27-1-2023",
                  style: TextStyle(
                      color: GlobalColors.kWhite.withOpacity(0.5),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const NormalSubHeadingText(text: "painting"),
                const SizedBox(
                  height: 15,
                ),
                const CyanColoredText(text: "0:45:37", size: 40),
                const SizedBox(
                  height: 15,
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
