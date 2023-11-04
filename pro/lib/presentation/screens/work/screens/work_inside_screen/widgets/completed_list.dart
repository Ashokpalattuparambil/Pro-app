import 'package:flutter/material.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/small_text.dart';

class CompletedList extends StatelessWidget {
  const CompletedList({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return UnconstrainedBox(
      child: BlackGreyGradientWidget(
        height: width / 8.4,
        width: width / 1.4,
        radius: 30,
        child: Row(
          children: [
            const SizedBox(
              width: 12,
            ),
            Image.asset(
              "images/successicon.png",
              height: 25,
              width: 25,
            ),
            const SizedBox(
              width: 12,
            ),
            const SmallText(text: "Coordinating and annoucement"),
          ],
        ),
      ),
    );
  }
}
