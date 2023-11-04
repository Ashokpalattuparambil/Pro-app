import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';

class TopProfileWithCalendarRow extends StatelessWidget {
  const TopProfileWithCalendarRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 2.3;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/profilescreen");
          },
          child: BlackGreyGradientWidget(
            height: width / 2.5,
            width: width / 2.5,
            radius: 30,
            child: Padding(
              padding: const EdgeInsets.all(11),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1506634572416-48cdfe530110?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80"),
                      fit: BoxFit.cover),
                  border: Border.all(color: GlobalColors.kViolet, width: 1),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width / 4,
        ),
        const HeadingTextWidget(
            text: "Pro", right: 0, left: 0, top: 0, bottom: 0),
        SizedBox(
          width: width / 4,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/calendarscreen");
          },
          child: BlackGreyGradientWidget(
            radius: 30,
            height: width / 2.5,
            width: width / 2.5,
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Image.asset("images/calendaricon.png"),
            ),
          ),
        ),
      ],
    );
  }
}
