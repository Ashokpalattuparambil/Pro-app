import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return BackGroundWidget(
      child: Column(
        children: [
          Row(
            children: [
              const HeadingTextWidget(
                  text: "Profile", right: 210, left: 20, top: 30, bottom: 30),
              Container(
                height: 42,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      GlobalColors.kCyan,
                      GlobalColors.kGreen,
                    ],
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: GlobalColors.kBlack,
                ),
              ),
            ],
          ),
          BlackGreyGradientWidget(
              height: height, width: width, radius: radius, child: child)
        ],
      ),
    );
  }
}
