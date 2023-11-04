import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        child: Column(
      children: const [
        HeadingTextWidget(
            text: "Calendar", right: 0, left: 0, top: 40, bottom: 0),
      ],
    ));
  }
}
