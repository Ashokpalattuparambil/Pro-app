import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';

class TotalTimeShowingWidget extends StatelessWidget {
  const TotalTimeShowingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 2.3;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/timedashboardscreen");
      },
      child: BlackGreyGradientWidget(
        radius: 30,
        height: 72,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              width: 3,
            ),
            Text(
              "Total time",
              style: TextStyle(
                  color: GlobalColors.kWhite.withOpacity(0.3),
                  fontSize: 11,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "4 h 20 m",
              style: TextStyle(
                  color: GlobalColors.kCyan,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 3,
            ),
          ],
        ),
      ),
    );
  }
}
