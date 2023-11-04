import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String hintText;
  const CustomTextFormFieldWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none),
          filled: true,
          contentPadding: const EdgeInsets.all(18),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: GlobalColors.kCyan),
          ),
          fillColor: GlobalColors.kWhite.withOpacity(0.09),
          hintText: hintText,
          hintStyle: TextStyle(
            color: GlobalColors.kWhite.withOpacity(0.4),
          ),
        ),
        cursorColor: GlobalColors.kWhite.withOpacity(0.2),
      ),
    );
  }
}
