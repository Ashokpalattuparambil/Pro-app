import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/texts/small_text.dart';

class ResearchTopicList extends StatelessWidget {
  const ResearchTopicList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 11,
          width: 11,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: GlobalColors.kViolet, width: 2),
          ),
        ),
        const SmallText(text: "new released research papers"),
        Image.asset(
          "images/successicon.png",
          height: 18,
          width: 18,
        )
      ],
    );
  }
}
