import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/small_text.dart';

class OnGoingList extends StatelessWidget {
  const OnGoingList({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return UnconstrainedBox(
      child: BlackGreyGradientWidget(
          height: width / 8.4,
          width: width / 1.4,radius: 30,
          child: Row(
            children: const [
              SizedBox(
                width: 12,
              ),
              CircleAvatar(
                backgroundColor: GlobalColors.kYellow,
                radius: 12,
              ),
              SizedBox(
                width: 12,
              ),
              SmallText(text: "Selecting tech lead"),
            ],
          )),
    );
  }
}
