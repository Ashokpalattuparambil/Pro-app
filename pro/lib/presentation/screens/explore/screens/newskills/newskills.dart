import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/dark_violet_colored_text.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';
import 'package:pro/presentation/screens/explore/screens/newskills/widgets/skills_list.dart';

class NewSkillsScreen extends StatelessWidget {
  const NewSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return BackGroundWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const HeadingTextWidget(
                text: "New skills", right: 0, left: 0, top: 0, bottom: 0),
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    CyanColoredText(text: "10", size: 32),
                    SizedBox(
                      height: 10,
                    ),
                    DarkVioletColoredText(text: "Achieved", size: 20),
                  ],
                ),
                Column(
                  children: const [
                    CyanColoredText(text: "5", size: 32),
                    SizedBox(
                      height: 10,
                    ),
                    DarkVioletColoredText(text: "Monthly goal", size: 20),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            UnconstrainedBox(
              child: Container(
                height: width / 8,
                width: width / 3.5,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      GlobalColors.kCyan,
                      GlobalColors.kGreen,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.add,
                  color: GlobalColors.kBlack,
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.history,
                color: GlobalColors.kCyan,
                size: 28,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 45),
              itemBuilder: ((context, index) {
                return const SkillList();
              }),
              itemCount: 8,
            ),
          ],
        ),
      ),
    );
  }
}
