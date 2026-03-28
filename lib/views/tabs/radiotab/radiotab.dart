import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:islamy_app2/data/models/radiomodle.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';
import 'package:islamy_app2/shared/bgimage.dart';
import 'package:islamy_app2/widgets/bordingstack.dart';

class Radiotabview extends StatefulWidget {
  const Radiotabview({super.key});

  @override
  State<Radiotabview> createState() => _RadiotabviewState();
}

class _RadiotabviewState extends State<Radiotabview> {
  bool isactive = true;
  bool ispause = false;
  bool ismute = false;

  List<Radiomodle> radios = List.generate(
    20,
    (index) => Radiomodle(name: "Radio $index"),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Bgimage(imagepath: Assets.radiobg.path),
            Column(
              children: [
                Bordingstack(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                  decoration: BoxDecoration(  color: const Color.fromARGB(71, 32, 32, 32),borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isactive = true;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                color: isactive
                                    ? AppColors.goldColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  "Radio",
                                  style: TextStyle(
                                    color: isactive
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isactive = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                color: isactive
                                    ? Colors.transparent
                                    : AppColors.goldColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  "Reciters",
                                  style: TextStyle(
                                    color: isactive
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: radios.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: AppColors.goldColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(Assets.radiobgcard.path),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Gap(5),
                                  Text(
                                    "Radio Ibrahim Al-Akder",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            radios[index].isPlaying =
                                                !radios[index].isPlaying;
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          radios[index].isPlaying
                                              ? Assets.polygon2
                                              : Assets.pause,
                                        ),
                                      ),
                                      Gap(30),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            radios[index].isMuted =
                                                !radios[index].isMuted;
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          radios[index].isMuted
                                              ? Assets.volumeHigh
                                              : Assets.volumeCross,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
