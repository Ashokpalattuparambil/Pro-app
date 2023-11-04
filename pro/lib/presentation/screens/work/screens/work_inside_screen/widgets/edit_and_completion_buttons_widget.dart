import 'package:flutter/material.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';

class EditAndCompletionButtonsWidget extends StatelessWidget {
  const EditAndCompletionButtonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            BlackGreyGradientWidget(
              height: width / 10,
              width: width / 4.7,
              radius: 30,
              child: UnconstrainedBox(
                child: Image.asset(
                  "images/editicon.png",
                  height: 17,
                  width: 17,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            BlackGreyGradientWidget(
              height: width / 10,
              width: width / 4.7,
              radius: 30,
              child: UnconstrainedBox(
                child: Image.asset(
                  "images/completetaskicon.png",
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
