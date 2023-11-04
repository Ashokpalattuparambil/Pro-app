import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class LastDateWidget extends StatelessWidget {
  const LastDateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: width / 6.7,
          width: width / 6.7,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: GlobalColors.kViolet, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "May",
                  style: TextStyle(
                      color: GlobalColors.kWhite.withOpacity(0.6),
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
                const Text(
                  "2",
                  style: TextStyle(
                      color: GlobalColors.kCyan,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        Text(
          "Last date",
          style: TextStyle(
              color: GlobalColors.kWhite.withOpacity(0.6),
              fontSize: 11.5,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
