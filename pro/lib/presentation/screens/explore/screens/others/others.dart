import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';
import 'package:pro/presentation/screens/explore/screens/others/widgets/other_list.dart';

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const HeadingTextWidget(
                text: "Movies to watch", right: 0, left: 0, top: 0, bottom: 0),
            const Icon(Icons.sort),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return const OtherList();
                }),
                separatorBuilder: ((context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                }),
                itemCount: 8)
          ],
        ),
      ),
    );
  }
}
