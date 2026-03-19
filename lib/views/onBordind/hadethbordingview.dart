import 'package:flutter/material.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';


class Hadethbordingview extends StatelessWidget {
  const Hadethbordingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(Assets.kabba.path, width: double.infinity),
        Text(
          "Welcome To Islmi App",
          style: TextStyle(
            color: AppColors.goldColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Welcome To Islmi App hadeeth",
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
