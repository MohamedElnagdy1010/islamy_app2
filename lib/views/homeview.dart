// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';
import 'package:islamy_app2/views/tabs/hadeethtab/hadeethtab.dart';
import 'package:islamy_app2/views/tabs/qurantab/qurantab.dart';
import 'package:islamy_app2/views/tabs/radiotab/radiotab.dart';
import 'package:islamy_app2/views/tabs/sebhatab/sebhatab.dart';
import 'package:islamy_app2/views/tabs/timestab/timestab.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});
  static const String routeName = "homeview";

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  int currentTab = 0;
  List<Widget> tabs = [
    Qurantabview(),
    Hadeethtabview(),
    Sebhatabview(),
    Radiotabview(),
    Timestabview(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTab],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (value) {
          currentTab = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          Custombottomnavigationbar(Assets.icQuran, "quran"),
          Custombottomnavigationbar(Assets.icHadeth, "hadeeth"),
          Custombottomnavigationbar(Assets.icSebha, "sepha"),
          Custombottomnavigationbar(Assets.icRadio, "radio"),
          Custombottomnavigationbar(Assets.icTime, "times"),
        ],
      ),
    );
  }

  BottomNavigationBarItem Custombottomnavigationbar(
    String iconpath,
    String lable,
  ) {
    return BottomNavigationBarItem(
      activeIcon: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 18),

        decoration: BoxDecoration(
          color: AppColors.blackColor.withValues(alpha: .6),
          borderRadius: BorderRadius.circular(66),
        ),
        child: SvgPicture.asset(
          iconpath,
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),

      icon: SvgPicture.asset(iconpath),
      label: lable,
    );
  }
}
