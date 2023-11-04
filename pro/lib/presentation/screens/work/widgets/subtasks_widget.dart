import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class SubTasksWidget extends StatelessWidget {
  const SubTasksWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Text(
          "Sub Tasks",
          style: TextStyle(
              color: GlobalColors.kWhite.withOpacity(0.6),
              fontSize: 12.5,
              fontWeight: FontWeight.bold),
        ),
        Container(
          alignment: Alignment.center,
          height: width / 6.6,
          width: width / 6.8,
          decoration: const BoxDecoration(
            color: GlobalColors.kViolet,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: const Text(
            "2",
            style: TextStyle(
                color: GlobalColors.kWhite,
                fontSize: 24,
                fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }
}
