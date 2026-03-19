import 'package:flutter/material.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';


class Radiobordingview extends StatelessWidget {
  const Radiobordingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset(Assets.radio.path, width: double.infinity)),
        Text(
          "Welcome To Islmi App",
          style: TextStyle(
            color: AppColors.goldColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Welcome To Islmi App Radio",
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
