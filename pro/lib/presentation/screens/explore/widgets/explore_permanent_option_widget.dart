import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/black_grey_gradient_widget.dart';

class ExploreOtherWidget extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const ExploreOtherWidget({
    Key? key,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(7),
      child: UnconstrainedBox(
        child: InkWell(
          onTap: ontap,
          child: BlackGreyGradientWidget(
            height: width / 2.5,
            width: width / 2.2,
            radius: 30,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 36, right: 92),
                  child: Container(
                    height: 40,
                    width: 15,
                    decoration: const BoxDecoration(
                        color: GlobalColors.kViolet,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: GlobalColors.kWhite.withOpacity(0.65),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
