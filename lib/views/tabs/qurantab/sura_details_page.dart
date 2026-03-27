import 'package:flutter/material.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';

class SuraDetailsPage extends StatelessWidget {
  const SuraDetailsPage({super.key});
  static const String routeName = "/SuraDetailsPage";

  @override
  Widget build(BuildContext context) {
    int suraId = ModalRoute.of(context)?.settings.arguments as int;
    print(suraId);
    return Scaffold(
      appBar: AppBar(title: Text("data"), centerTitle: true),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.suraDetails.path)),
        ),

        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 42),
                child: Text(
                  "data",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.goldColor,
                  ),
                ),
              ),
              Text(
                "data",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.goldColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
