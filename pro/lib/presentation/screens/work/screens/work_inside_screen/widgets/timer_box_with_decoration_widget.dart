import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class TimerBoxWithDecorationWidget extends StatelessWidget {
  const TimerBoxWithDecorationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return UnconstrainedBox(
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(12),
        height: width / 2.2,
        width: width / 1.1,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1587440871875-191322ee64b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: GlobalColors.kViolet, width: 1),
        ),
        child: UnconstrainedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(38),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                alignment: Alignment.center,
                height: width / 5.2,
                width: width / 2.1,
                decoration: BoxDecoration(
                  color: GlobalColors.kGrey.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(38),
                ),
                child: const Text(
                  "0:45:37",
                  style: TextStyle(
                      color: GlobalColors.kCyan,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
