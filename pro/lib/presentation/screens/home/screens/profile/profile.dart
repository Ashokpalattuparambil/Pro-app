import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Profile page dude"),
      ],
    ));
  }
}
