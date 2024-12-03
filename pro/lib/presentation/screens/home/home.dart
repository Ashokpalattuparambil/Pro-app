import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';
import 'package:pro/presentation/screens/home/widgets/body_fat_showing_widget.dart';
import 'package:pro/presentation/screens/home/widgets/date_switching_widget.dart';
import 'package:pro/presentation/screens/home/widgets/home_top_profilebutton_with_calendar_row.dart';
import 'package:pro/presentation/screens/home/widgets/kcal_info_widget.dart';
import 'package:pro/presentation/screens/home/widgets/routine_completionrate_widget.dart';
import 'package:pro/presentation/screens/home/widgets/total_time_showing_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 2.3;
    return BackGroundWidget(
      child: ListView(
        children: [
          const TopProfileWithCalendarRow(),
          const SizedBox(
            height: 26,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            height: width,
            width: width,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  GlobalColors.blureffectCircle,
                  GlobalColors.kPink,
                ],
              ),
            ),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1532123675048-773bd75df1b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
              ),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 150, right: 150, top: 30, bottom: 10),
            child: Row(
              children: [
                Text(
                  "Tier.",
                  style: TextStyle(
                      color: GlobalColors.kCyan,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "GOD",
                  style: TextStyle(
                      color: GlobalColors.kCyan,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const SizedBox(
                width: 35,
              ),
              Image.asset(
                "images/stepsicon.png",
                height: 50,
                width: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "9340",
                style: TextStyle(
                    color: GlobalColors.kCyan,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              BlackGreyGradientWidget(
                height: 220,
                width: width,
                radius: 30,
                child: const KcalInfoHomeWidget(),
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                children: [
                  TotalTimeShowingWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  BodyFatShowingWidget(),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const HeadingTextWidget(
              text: "Today Routine", right: 0, left: 30, top: 0, bottom: 30),
          const RoutineCompletionRateWidget(),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 40),
            child: Text(
              "All routines today",
              style: TextStyle(
                  color: GlobalColors.kViolet,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const DateSwitchingWidget(),
        ],
      ),
    );
  }
}
