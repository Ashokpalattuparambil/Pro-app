import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/gradient_button.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            "images/prologo.png",
            height: 75,
            width: 75,
          ),
          const Text(
            "Get Started",
            style: TextStyle(
                color: GlobalColors.kViolet,
                fontSize: 21,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "set up your account",
            style: TextStyle(
                color: GlobalColors.kWhite.withOpacity(0.4),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Column(
            children: [
              GradientButtonWidget(
                text: "Login",
                callback: () {
                  Navigator.pushNamed(context, "/loginscreen");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              GradientButtonWidget(
                text: "Sign up",
                callback: () {
                  Navigator.pushNamed(context, "/signupscreen");
                },
              ),
            ],
          ),
          const Text(
            "Or",
            style: TextStyle(
                color: GlobalColors.kViolet,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "Login with",
            style: TextStyle(
                color: GlobalColors.kViolet,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const SizedBox(
                width: 35,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(18),
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    color: GlobalColors.kWhite.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/googlelogo.png",
                        height: 55,
                        width: 55,
                      ),
                      Text(
                        "Google",
                        style: TextStyle(
                            color: GlobalColors.kWhite.withOpacity(0.6),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(18),
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    color: GlobalColors.kWhite.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/fblogo.png",
                        height: 55,
                        width: 55,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                            color: GlobalColors.kWhite.withOpacity(0.6),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 35,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
