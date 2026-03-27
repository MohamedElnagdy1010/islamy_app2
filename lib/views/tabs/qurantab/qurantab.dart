import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:islamy_app2/data/models/suramodel.dart';
import 'package:islamy_app2/data/qurandata.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';
import 'package:islamy_app2/shared/bgimage.dart';
import 'package:islamy_app2/views/tabs/qurantab/data/customTextfield.dart';
import 'package:islamy_app2/views/tabs/qurantab/data/mostresentsection.dart';
import 'package:islamy_app2/views/tabs/qurantab/data/suraslist.dart';
import 'package:islamy_app2/widgets/bordingstack.dart';

class Qurantabview extends StatefulWidget {
  const Qurantabview({super.key});

  @override
  State<Qurantabview> createState() => _QurantabviewState();
}

class _QurantabviewState extends State<Qurantabview> {
  TextEditingController controller = TextEditingController();
  List<Suramodel> _filteredSuras = Qurandata.suras;
  void _onChanged(String searshtext) {

    setState(() {
      if (searshtext.isEmpty) {
        _filteredSuras = Qurandata.suras;
      } else {
        _filteredSuras = Qurandata.suras.where((suras) {
          final quary = searshtext.toLowerCase();
          return suras.enName.toLowerCase().contains(searshtext) ||
              suras.arName.toLowerCase().contains(searshtext) ||
              suras.number.toString() == searshtext;
        }).toList();
      }
    });
  }

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
                  //   child: SizedBox(
                  //     height: 100,
                  //     child: SingleChildScrollView(
                  //       scrollDirection: Axis.horizontal,
                  //       child: Row(
                  //         children: List.generate(20, (index) {
                  //           return Container(
                  //             width: 80,
                  //             margin: EdgeInsets.only(right: 10),
                  //             decoration: BoxDecoration(
                  //               color: AppColors.offwhiteColor,
                  //               borderRadius: BorderRadius.circular(20),
                  //             ),
                  //             child: Column(
                  //               children: [
                  //                 Container(color: Colors.amber, height: 80),
                  //                 Text("Hadeeth"),
                  //               ],
                  //             ),
                  //           );
                  //         }),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  SliverToBoxAdapter(child: Gap(21)),
                  SliverToBoxAdapter(
                    child: CutomTextfield(
                      controller: controller,
                      onChanged:_onChanged,
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
                  Suraslist(suras: _filteredSuras),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
