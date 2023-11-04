import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';

class TimeDashBoardScreen extends StatelessWidget {
  const TimeDashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        child: Column(
      children: const [
        HeadingTextWidget(
            text: "Total Time", right: 0, left: 0, top: 30, bottom: 0)
      ],
    ));
  }
}
