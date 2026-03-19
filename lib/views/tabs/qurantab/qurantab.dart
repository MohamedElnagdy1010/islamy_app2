
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';
import 'package:islamy_app2/shared/bgimage.dart';
import 'package:islamy_app2/views/tabs/qurantab/data/customTextfield.dart';
import 'package:islamy_app2/views/tabs/qurantab/data/mostresentsection.dart';
import 'package:islamy_app2/views/tabs/qurantab/data/suraslist.dart';
import 'package:islamy_app2/widgets/bordingstack.dart';


class Qurantabview extends StatelessWidget {
  const Qurantabview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Bgimage(imagepath: Assets.quranbg.path),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 12, top: 15),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: Bordingstack()),
                  // SliverToBoxAdapter(
                  //   child: ListView.builder(
                  //     itemCount: 20,
                  //     itemBuilder: (context, index) {
                  //       return Container(
                  //         height: 50,
                  //         width: 50,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(100),
                  //           color: AppColors.offwhiteColor,
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                
                
                  SliverToBoxAdapter(child: Gap(21)),
                  SliverToBoxAdapter(
                    child: CutomTextfield(
                      hinttext: 'Sura Name',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: SvgPicture.asset(
                          Assets.icQuran,
                          colorFilter: ColorFilter.mode(
                            AppColors.goldColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: Gap(21)),
                  SliverToBoxAdapter(child: Mostresentsection()),
                  Suraslist(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
