import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/presentation/screens/workout/widgets/exercise_list_widget.dart';
import 'package:pro/presentation/screens/workout/widgets/stepcounter_container_widget.dart';

class ExerciseTabViewWidget extends StatelessWidget {
  const ExerciseTabViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const StepCounterContainerWidget(),
        const Padding(
          padding: EdgeInsets.only(top: 30, bottom: 30, right: 280),
          child: Icon(
            Icons.history,
            size: 28,
            color: GlobalColors.kCyan,
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: ((context, index) {
              return const ExerciseListWidget();
            }),
            separatorBuilder: ((context, index) {
              return const SizedBox(
                height: 15,
              );
            }),
            itemCount: 10),
      ],
    );
  }
}
