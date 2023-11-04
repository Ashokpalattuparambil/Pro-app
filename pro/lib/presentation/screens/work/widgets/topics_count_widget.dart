import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class TopicsCountWidget extends StatelessWidget {
  const TopicsCountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: width / 6.7,
          width: width / 6.7,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: GlobalColors.kCyan, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            "6",
            style: TextStyle(
                color: GlobalColors.kCyan,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          "Topics",
          style: TextStyle(
              color: GlobalColors.kWhite.withOpacity(0.6),
              fontSize: 11.5,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
