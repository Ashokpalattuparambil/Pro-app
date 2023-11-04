import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/small_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';
import 'package:pro/presentation/screens/explore/screens/topics/widgets/research_topiclist.dart';

class ExploreTopicsList extends StatelessWidget {
  const ExploreTopicsList({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return UnconstrainedBox(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/insidetopic");
        },
        child: BlackGreyGradientWidget(
          height: width / 1.12,
          width: width / 1.1,
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 9),
                  child: Text(
                    "Blackhole",
                    style: TextStyle(
                        color: GlobalColors.kWhite.withOpacity(0.8),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(right: width / 4.7),
                  child: const Align(
                      alignment: Alignment.bottomRight,
                      child: SmallText(text: "15-1-2023")),
                ),
                Row(
                  children: [
                    Container(
                      height: 1,
                      width: width / 1.6,
                      color: GlobalColors.kCyan,
                    ),
                    CircleAvatar(
                      radius: width / 11,
                      backgroundColor: GlobalColors.kViolet,
                      child: CircleAvatar(
                        radius: width / 12.3,
                        backgroundImage: const NetworkImage(
                            "https://epsilon.aeon.co/images/78ba87e7-7198-4468-81b5-500c505d5bc8/header_essay-gettyimages-1237093074.jpg"),
                      ),
                    ),
                  ],
                ),
                const SmallWithBoldText(text: "Research Topics"),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: width / 3.6,
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
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CyanColoredText(text: "0:45:37", size: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
