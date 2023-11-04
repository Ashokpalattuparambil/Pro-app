import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/gradient_button.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';
import 'package:pro/presentation/screens/work/widgets/worklist_widget.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            const HeadingTextWidget(
                text: "Work", right: 260, left: 20, top: 30, bottom: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: GradientButtonWidget(
                    text: "Add new Work/Project", callback: () {})),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.history,
                    color: GlobalColors.kCyan,
                    size: 26,
                  ),
                  Icon(
                    Icons.unfold_more_outlined,
                    color: GlobalColors.kCyan,
                    size: 26,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Work List",
                    style: TextStyle(
                        color: GlobalColors.kViolet,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  return const WorkListWidget();
                }),
                separatorBuilder: ((context, index) {
                  return const SizedBox(height: 15);
                }),
                itemCount: 6),
          ],
        ),
      ),
    );
  }
}
