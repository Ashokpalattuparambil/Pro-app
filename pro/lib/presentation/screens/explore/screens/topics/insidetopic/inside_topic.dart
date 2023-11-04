import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/normal_bold_subheading_text.dart';
import 'package:pro/global/widgets/texts/small_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';
import 'package:pro/presentation/screens/explore/screens/topics/widgets/research_topiclist.dart';

class InsideTopic extends StatelessWidget {
  const InsideTopic({super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Blackhole",
                  style: TextStyle(
                      color: GlobalColors.kWhite.withOpacity(0.8),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SmallText(text: "15-1-2023"),
                Row(
                  children: [
                    Container(
                      height: 1,
                      width: width / 1.7,
                      color: GlobalColors.kCyan,
                    ),
                    CircleAvatar(
                      radius: width / 10,
                      backgroundColor: GlobalColors.kViolet,
                      child: CircleAvatar(
                        radius: width / 11.3,
                        backgroundImage: const NetworkImage(
                            "https://epsilon.aeon.co/images/78ba87e7-7198-4468-81b5-500c505d5bc8/header_essay-gettyimages-1237093074.jpg"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                const SizedBox(
                  width: 8,
                ),
                const NormalSubHeadingText(text: "Description"),
                const SizedBox(
                  height: 10,
                ),
                const SmallText(
                    text:
                        "A black hole is a region of spacetime wheregravity is so strong that nothing, includinglight or other electro magnetic waves, has enough energy to escape it."),
                const SizedBox(
                  height: 10,
                ),
                const SmallWithBoldText(text: "Research Topics"),
                SizedBox(
                  height: width / 2,
                  width: width / 1.5,
                  child: ListView.separated(
                    itemBuilder: ((context, index) {
                      return const ResearchTopicList();
                    }),
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 10);
                    },
                    itemCount: 7,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: CyanColoredText(text: "0:45:37", size: 41),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: BlackGreyGradientWidget(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
