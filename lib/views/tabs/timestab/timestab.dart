import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';
import 'package:islamy_app2/shared/bgimage.dart';
import 'package:islamy_app2/views/tabs/timestab/widgets/azkar_widget.dart';
import 'package:islamy_app2/widgets/bordingstack.dart';

class Timestabview extends StatelessWidget {
  const Timestabview({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> praystimes = [
      "Fajr",
      "Raise",
      "Dhuhr",
      "Asr",
      "Magrib",
      "Ishaa",
    ];
    return Scaffold(
      body: Stack(
        children: [
          Bgimage(imagepath: Assets.timesbg.path),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Bordingstack(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 300,
                decoration: BoxDecoration(
                  color: AppColors.brownColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: AppColors.goldColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(250, 250),
                      topRight: Radius.elliptical(250, 250),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 14.0,
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("16 Jul, \n 2024"),
                            Text("Pray time \n Tuesday"),
                            Text("09 Muh,\n 1446"),
                          ],
                        ),
                      ),
                      Gap(30),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.blackColor,
                                      AppColors.babygoldColor,
                                    ],
                                  ),

                                  borderRadius: BorderRadius.circular(20),
                                ),
                                //  height: 100,
                                width: 100,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,

                                  children: [
                                    Text(
                                      praystimes[index],
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "04:38",
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "PM",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(""),
                            Text("Next Pray - 02:32"),

                            SvgPicture.asset(Assets.volumeCross),
                          ],
                        ),
                      ),
                      Gap(20),
                    ],
                  ),
                ),
              ),
              Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Azkar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),  Gap(10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                    AzkarWidget(image: Assets.morningAzkar.path, title: "Mornig Azkar",),
                    
                      Gap(10),
                    AzkarWidget(image: Assets.eveningAzkar.path, title: "Evening Azkar",)
                    ],
                  ),
                ),
              ),
              Gap(10),
            ],
          ),
        ],
      ),
    );
  }
}
