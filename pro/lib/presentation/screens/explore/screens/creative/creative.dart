import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';
import 'package:pro/presentation/screens/explore/screens/creative/widgets/creative_list_widget.dart';

class Creative extends StatelessWidget {
  const Creative({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const HeadingTextWidget(
                text: "Creative", right: 0, left: 0, top: 0, bottom: 0),
            const SizedBox(
              height: 30,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return const CreativeListWidget();
                }),
                separatorBuilder: ((context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                }),
                itemCount: 9),
          ],
        ),
      ),
    );
  }
}
