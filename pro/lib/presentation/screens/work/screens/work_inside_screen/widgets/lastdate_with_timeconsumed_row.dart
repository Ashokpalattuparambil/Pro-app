import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/small_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';

class LastDateWithTimeConsumedRow extends StatelessWidget {
  const LastDateWithTimeConsumedRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const SmallWithBoldText(text: "Last date"),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: width / 8.6,
              width: width / 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    GlobalColors.kBlack.withOpacity(0.4),
                    GlobalColors.kGrey.withOpacity(0.3),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: GlobalColors.kViolet, width: 1.4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SmallText(text: "May"),
                  CyanColoredText(text: "2", size: 20),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: const [
            SmallWithBoldText(text: "Today"),
            SizedBox(
              height: 16,
            ),
            CyanColoredText(text: "4 h 20 m", size: 14),
          ],
        ),
        Column(
          children: const [
            SmallWithBoldText(text: "Total"),
            SizedBox(
              height: 16,
            ),
            CyanColoredText(text: "24 h 28 m", size: 14),
          ],
        ),
      ],
    );
  }
}
