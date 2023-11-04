import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class ExerciseListWidget extends StatelessWidget {
  const ExerciseListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/workoutinsidescreen");
      },
      child: Container(
        height: width / 4.5,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              GlobalColors.kBlack.withOpacity(0.4),
              GlobalColors.kGrey.withOpacity(0.3),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatar(
              radius: 26,
              backgroundColor: GlobalColors.kCyan,
              child: CircleAvatar(
                radius: 21,
                backgroundImage: NetworkImage(
                    "https://st.depositphotos.com/1224365/2338/i/600/depositphotos_23389228-stock-photo-sport-woman-starting-running.jpg"),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Running",
                  style: TextStyle(
                      color: GlobalColors.kWhite.withOpacity(0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/burnedicon.png",
                      height: 16,
                      width: 16,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      "310 kcal",
                      style: TextStyle(
                          color: GlobalColors.kCyan,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Image.asset(
              "images/timericon.png",
              height: 44,
              width: 44,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: GlobalColors.kCyan, width: 4.5),
                  ),
                  child: const Text(
                    "  3\nkm",
                    style: TextStyle(
                        color: GlobalColors.kCyan,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Round",
                  style: TextStyle(
                      color: GlobalColors.kCyan,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
