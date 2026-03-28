import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';

class AzkarWidget extends StatelessWidget {
  const AzkarWidget({super.key, required this.image, required this.title});
final  String image ;
final  String title ;
  @override
  Widget build(BuildContext context) {
    return   Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),

                            side: BorderSide(
                              color: AppColors.goldColor,
                              width: 3,
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(image),
                              Gap(10),
                              Text(
                              title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    
    ;
  }
}
