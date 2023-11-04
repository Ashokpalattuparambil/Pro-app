import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({
    super.key,
  });

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    Timer(
      const Duration(milliseconds: 2000),
      (() => Navigator.pushNamed(context, "/introductionscreen1")),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Image.asset(
              "images/prologo.png",
              height: 75,
              width: 75,
            ),
          ),
          const CircularProgressIndicator(
            color: GlobalColors.kGreen,
          )
        ],
      ),
    );
  }
}
