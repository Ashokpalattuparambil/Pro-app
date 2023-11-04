import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/presentation/screens/explore/explore.dart';
import 'package:pro/presentation/screens/home/home.dart';
import 'package:pro/presentation/screens/work/work.dart';
import 'package:pro/presentation/screens/workout/workout.dart';

int screenIndex = 0;

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final screens = [
      const HomeScreen(),
      const WorkScreen(),
      const WorkOutScreen(),
      const ExploreScreen(),
    ];
    return BackGroundWidget(
      child: Scaffold(
        body: screens[screenIndex],
        bottomNavigationBar: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.all(10),
          height: 80,
          width: width,
          decoration: BoxDecoration(
            color: GlobalColors.kWhite.withOpacity(0.089),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    screenIndex = 0;
                  });
                },
                splashColor: GlobalColors.kCyan,
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: UnconstrainedBox(
                    child: Image.asset(
                      screenIndex == 0
                          ? "images/homeiconactive.png"
                          : "images/homeicon.png",
                      height: 24.5,
                      width: 24.5,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    screenIndex = 1;
                  });
                },
                splashColor: GlobalColors.kCyan,
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: UnconstrainedBox(
                    child: Image.asset(
                      screenIndex == 1
                          ? "images/workiconactive.png"
                          : "images/workicon.png",
                      height: 24.5,
                      width: 24.5,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    screenIndex = 2;
                  });
                },
                splashColor: GlobalColors.kCyan,
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: UnconstrainedBox(
                    child: Image.asset(
                      screenIndex == 2
                          ? "images/workouticonactive.png"
                          : "images/workouticon.png",
                      height: 24.5,
                      width: 24.5,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    screenIndex = 3;
                  });
                },
                splashColor: GlobalColors.kCyan,
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: UnconstrainedBox(
                    child: Image.asset(
                      screenIndex == 3
                          ? "images/exploreiconactive.png"
                          : "images/exploreicon.png",
                      height: 24.5,
                      width: 24.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
