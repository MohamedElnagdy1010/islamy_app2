import 'package:flutter/material.dart';

import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';

class Quranbordingviwe extends StatelessWidget {
  const Quranbordingviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(Assets.reading.path, width: double.infinity),
        Text(
          "Welcome To Islmi App",
          style: TextStyle(
            color: AppColors.goldColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Welcome To Islmi App Quran",
          style: TextStyle(
            color: AppColors.goldColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
