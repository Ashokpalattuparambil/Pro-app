import 'dart:ui';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class BackGroundWidget extends StatelessWidget {
  final Widget child;
  const BackGroundWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 80),
                child: Container(
                  width: width / 2.15,
                  height: width / 2.15,
                  decoration: BoxDecoration(
                      color: GlobalColors.blureffectCircle.withOpacity(0.27),
                      shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 90),
                child: Container(
                  width: width / 2.15,
                  height: width / 2.15,
                  decoration: BoxDecoration(
                      color: GlobalColors.blureffectCircle.withOpacity(0.27),
                      shape: BoxShape.circle),
                ),
              ),
            ],
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 75.0, sigmaY: 75.0),
            child: Container(
              height: height,
              width: width,
              color: GlobalColors.kWhite.withOpacity(0.06),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
