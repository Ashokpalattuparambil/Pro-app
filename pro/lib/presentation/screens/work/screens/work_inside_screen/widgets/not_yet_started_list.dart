import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/small_text.dart';

class NotYetStartedList extends StatelessWidget {
  const NotYetStartedList({super.key});

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
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: GlobalColors.kPink,
                      width: 3,
                    )),
              ),
              const SizedBox(
                width: 12,
              ),
              const SmallText(text: "Explore new design trends"),
            ],
          )),
    );
  }
}
