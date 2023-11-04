import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';

class BodyFatShowingWidget extends StatelessWidget {
  const BodyFatShowingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 2.3;
    return BlackGreyGradientWidget(
      height: 157,
      width: width,
      radius: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Body fat",
                    style: TextStyle(
                        color: GlobalColors.kWhite.withOpacity(0.3),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "as per the current \n weight",
                    style: TextStyle(
                        color: GlobalColors.kWhite.withOpacity(0.3),
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Text(
                "22 %",
                style: TextStyle(
                    color: GlobalColors.kViolet,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Body weight",
                style: TextStyle(
                    color: GlobalColors.kWhite.withOpacity(0.3),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "66 kg",
                style: TextStyle(
                    color: GlobalColors.kCyan,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
