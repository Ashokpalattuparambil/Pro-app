import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class TopicsList extends StatelessWidget {
  const TopicsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(
          backgroundColor: GlobalColors.kCyan,
          radius: 6,
        ),
      ],
    );
  }
}
