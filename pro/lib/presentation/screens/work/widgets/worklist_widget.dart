import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/presentation/screens/work/widgets/continue_button_widget.dart';
import 'package:pro/presentation/screens/work/widgets/hours_spend_row.dart';
import 'package:pro/presentation/screens/work/widgets/last_date_widget.dart';
import 'package:pro/presentation/screens/work/widgets/subtasks_widget.dart';
import 'package:pro/presentation/screens/work/widgets/topics_count_widget.dart';

class WorkListWidget extends StatelessWidget {
  const WorkListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/workinsidescreen");
        },
        child: BlackGreyGradientWidget(
          height: width / 1.6,
          width: width / 2.3,radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: width / 5.6,
                      width: width / 3.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1587440871875-191322ee64b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
                            ),
                            fit: BoxFit.cover),
                        border:
                            Border.all(color: GlobalColors.kViolet, width: 1),
                      ),
                    ),
                    Text(
                      "Research",
                      style: TextStyle(
                          color: GlobalColors.kWhite.withOpacity(0.6),
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "15-1-2023",
                      style: TextStyle(
                          color: GlobalColors.kWhite.withOpacity(0.6),
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                    const Text(
                      "High",
                      style: TextStyle(
                          color: GlobalColors.kOrange,
                          fontSize: 12.5,
                          fontWeight: FontWeight.bold),
                    ),
                    const HoursSpendRow(),
                    Container(
                      height: 12,
                      width: width / 4.4,
                      decoration: BoxDecoration(
                        color: GlobalColors.kViolet,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SubTasksWidget(),
                    Row(
                      children: const [
                        LastDateWidget(),
                        SizedBox(
                          width: 22,
                        ),
                        TopicsCountWidget(),
                      ],
                    ),
                    const ContinueButtonWidget()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
