import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/global/widgets/custom_textformfield.dart';
import 'package:pro/global/widgets/gradient_button.dart';
import 'package:pro/global/widgets/transparent_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: TransparentFormWidget(
        height: 500,
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
              "Login",
              style: TextStyle(
                  color: GlobalColors.kWhite.withOpacity(0.6), fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormFieldWidget(hintText: "email"),
            const CustomTextFormFieldWidget(hintText: "password"),
            const SizedBox(
              height: 60,
            ),
            GradientButtonWidget(
                text: "Login",
                callback: () {
                  Navigator.pushNamed(context, "/rootscreen");
                }),
          ],
        ),
      ),
    );
  }
}
