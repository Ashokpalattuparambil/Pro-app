import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';
import 'package:pro/global/widgets/texts/cyan_colored_text.dart';
import 'package:pro/global/widgets/texts/small_with_bold_text.dart';

class CreativeListWidget extends StatelessWidget {
  const CreativeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/insidecreative");
      },
      child: BlackGreyGradientWidget(
        height: height / 5.8,
        width: width / 1.3,
        radius: 30,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                height: height / 7.2,
                width: width / 2.5,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://www.culturepartnership.eu/upload/news/5d280ec23e2d8.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: GlobalColors.kViolet, width: 2),
                ),
              ),
              SizedBox(
                width: width / 6,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SmallWithBoldText(text: "Painting"),
                  const CyanColoredText(text: "0:45:37", size: 16),
                  Text(
                    "27-1-2023",
                    style: TextStyle(
                        color: GlobalColors.kWhite.withOpacity(0.5),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
