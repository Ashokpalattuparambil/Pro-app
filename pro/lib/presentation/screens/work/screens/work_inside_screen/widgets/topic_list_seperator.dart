import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class TopicListSeperator extends StatelessWidget {
  const TopicListSeperator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 14,
        ),
        Divider(
          color: GlobalColors.kCyan.withOpacity(0.5),
          thickness: 1,
        ),
        const SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
