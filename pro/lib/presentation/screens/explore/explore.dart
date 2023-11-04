import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/background_widget.dart';

import 'package:pro/global/widgets/texts/heading_text.dart';
import 'package:pro/presentation/screens/explore/widgets/explore_permanent_option_column.dart';
import 'package:pro/presentation/screens/explore/widgets/explore_permanent_option_widget.dart';
import 'package:pro/presentation/screens/explore/widgets/other_addbutton_row.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: ListView(
        children: [
          const HeadingTextWidget(
              text: "Explore more", right: 0, left: 0, top: 0, bottom: 0),
          const Icon(
            Icons.info,
            color: GlobalColors.kCyan,
          ),
          const ExplorePermanentOptionColumn(),
          const SizedBox(
            height: 30,
          ),
          const OtherAddButtonRow(),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.0),
            itemBuilder: (context, index) {
              return ExploreOtherWidget(
                text: "Movies to Watch",
                ontap: () {
                  Navigator.of(context).pushNamed("/others");
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
