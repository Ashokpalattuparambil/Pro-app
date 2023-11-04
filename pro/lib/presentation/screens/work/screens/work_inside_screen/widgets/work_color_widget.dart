import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class WorkColorWidget extends StatelessWidget {
  const WorkColorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return UnconstrainedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 250, top: 16),
        child: Container(
          height: width / 30,
          width: width / 4.5,
          decoration: BoxDecoration(
            color: GlobalColors.kViolet,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
