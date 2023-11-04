import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/normal_bold_subheading_text.dart';
import 'package:pro/global/widgets/texts/small_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/completed_list.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/heading_and_subheading_with_pause_button_widget.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/heading_completed_with_tasknumber_widget.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/heading_notyetstarted_with_tasknumber_widget.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/heading_ongoing_with_tasknumber_widget.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/lastdate_with_timeconsumed_row.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/not_yet_started_list.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/on_going_list.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/timer_box_with_decoration_widget.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/topic_list_seperator.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/topics_list.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/widgets/work_color_widget.dart';

import 'widgets/edit_and_completion_buttons_widget.dart';

class WorkInsideScreen extends StatelessWidget {
  const WorkInsideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return BackGroundWidget(
      child: BlackGreyGradientWidget(
        height: double.infinity,
        width: double.infinity,
        radius: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const TimerBoxWithDecorationWidget(),
              const WorkColorWidget(),
              const SizedBox(
                height: 33,
              ),
              const HeadingAndSubHeadingWithPauseButtonRow(),
              const SizedBox(
                height: 33,
              ),
              const LastDateWithTimeConsumedRow(),
              const SizedBox(
                height: 28,
              ),
              const EditAndCompletionButtonsWidget(),
              const SizedBox(
                height: 24,
              ),
              const NormalSubHeadingText(text: "Description"),
              const SizedBox(
                height: 14,
              ),
              const SmallText(
                  text:
                      "Find reports on industry, containing market  forecasts, \n financial breakdowns, competitor analysis & more."),
              const SizedBox(
                height: 28,
              ),
              const NormalSubHeadingText(text: "Topics"),
              const SizedBox(
                height: 24,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return const TopicsList();
                }),
                separatorBuilder: (context, index) {
                  return const TopicListSeperator();
                },
                itemCount: 10,
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SmallWithBoldText(text: "Tasks"),
                  BlackGreyGradientWidget(
                    height: 50,
                    width: 50,
                    radius: 30,
                    child: Icon(
                      Icons.add,
                      color: GlobalColors.kCyan,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              UnconstrainedBox(
                child: BlackGreyGradientWidget(
                  height: width / 8.6,
                  width: width / 1.8,
                  radius: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Total tasks done",
                        style: TextStyle(
                            color: GlobalColors.kViolet,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold),
                      ),
                      CyanColoredText(text: "10", size: 18),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const HeadingNotYetStartedWithTaskNumberRow(),
              const SizedBox(
                height: 8,
              ),
              Divider(
                color: GlobalColors.kGrey.withOpacity(0.5),
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return const NotYetStartedList();
                  }),
                  separatorBuilder: ((context, index) {
                    return const SizedBox(
                      height: 14.5,
                    );
                  }),
                  itemCount: 5),
              const SizedBox(
                height: 28,
              ),
              const HeadingOnGoingWithTaskNumberRow(),
              const SizedBox(
                height: 8,
              ),
              Divider(
                color: GlobalColors.kGrey.withOpacity(0.5),
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return const OnGoingList();
                }),
                separatorBuilder: ((context, index) {
                  return const SizedBox(
                    height: 14.5,
                  );
                }),
                itemCount: 3,
              ),
              const SizedBox(
                height: 28,
              ),
              const HeadingCompletedWithTaskNumberRow(),
              const SizedBox(
                height: 8,
              ),
              Divider(
                color: GlobalColors.kGrey.withOpacity(0.5),
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return const CompletedList();
                }),
                separatorBuilder: ((context, index) {
                  return const SizedBox(
                    height: 14.5,
                  );
                }),
                itemCount: 3,
              ),
              const SizedBox(
                height: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
