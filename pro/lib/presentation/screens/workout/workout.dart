import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/gradient_button.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';
import 'package:pro/presentation/screens/workout/widgets/exercise_tabview_widget.dart';
import 'package:pro/presentation/screens/workout/widgets/managefood_tabview_widget.dart';

class WorkOutScreen extends StatefulWidget {
  const WorkOutScreen({super.key});

  @override
  State<WorkOutScreen> createState() => _WorkOutScreenState();
}

class _WorkOutScreenState extends State<WorkOutScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const HeadingTextWidget(
                text: "Exercise", right: 200, left: 0, top: 40, bottom: 20),
            GradientButtonWidget(text: "Add Exercise", callback: () {}),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TabBar(
                indicatorColor: GlobalColors.kCyan,
                indicatorWeight: 8,
                indicatorSize: TabBarIndicatorSize.label,
                controller: tabController,
                tabs: const [
                  Tab(
                    child: Text(
                      "Add Your Exercise",
                      style: TextStyle(
                          color: GlobalColors.kViolet,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Manage Food",
                      style: TextStyle(
                          color: GlobalColors.kViolet,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  ExerciseTabViewWidget(),
                  ManageFoodWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
