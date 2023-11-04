import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/custom_textformfield.dart';
import 'package:pro/global/widgets/gradient_button.dart';
import 'package:pro/global/widgets/transparent_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: TransparentFormWidget(
        height: 600,
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Image.asset(
              "images/prologo.png",
              height: 60,
              width: 60,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Signup",
              style: TextStyle(
                  color: GlobalColors.kWhite.withOpacity(0.6), fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormFieldWidget(hintText: "username"),
            const CustomTextFormFieldWidget(hintText: "email"),
            const CustomTextFormFieldWidget(hintText: "password"),
            const SizedBox(
              height: 86,
            ),
            GradientButtonWidget(
                text: "Sign in",
                callback: () {
                  Navigator.pushNamed(context, "/rootscreen");
                }),
          ],
        ),
      ),
    );
  }
}
