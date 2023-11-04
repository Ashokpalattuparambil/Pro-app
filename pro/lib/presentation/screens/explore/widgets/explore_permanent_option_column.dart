import 'package:flutter/material.dart';
import 'package:pro/presentation/screens/explore/widgets/explore_permanent_option_widget.dart';

class ExplorePermanentOptionColumn extends StatelessWidget {
  const ExplorePermanentOptionColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ExploreOtherWidget(
              text: "New Skills",
              ontap: () {
                Navigator.pushNamed(context, "/newskillsscreen");
              },
            ),
            ExploreOtherWidget(
              text: "Books",
              ontap: () {
                Navigator.pushNamed(context, "/booksscreen");
              },
            ),
          ],
        ),
        Row(
          children: [
            ExploreOtherWidget(
              text: "Topics",
              ontap: () {
                Navigator.pushNamed(context, "/topics");
              },
            ),
            ExploreOtherWidget(
              text: "Creative",
              ontap: () {
                Navigator.pushNamed(context, "/creative");
              },
            ),
          ],
        ),
      ],
    );
  }
}
