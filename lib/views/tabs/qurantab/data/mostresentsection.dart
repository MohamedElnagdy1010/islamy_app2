import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';

class Mostresentsection extends StatelessWidget {
  const Mostresentsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Most Recently ",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Gap(10),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                color: AppColors.goldColor,
                child: Row( 
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                        bottom: 20,
                        left: 17,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            "AL Anbiya",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "الانبياء",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "112 verses",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(Assets.reading.path,color: AppColors.blackColor,),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
