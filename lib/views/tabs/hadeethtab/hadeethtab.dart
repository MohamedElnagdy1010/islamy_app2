import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:islamy_app2/data/models/hadeethmodel.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';
import 'package:islamy_app2/shared/bgimage.dart';
import 'package:islamy_app2/widgets/bordingstack.dart';

class Hadeethtabview extends StatefulWidget {
  const Hadeethtabview({super.key});

  @override
  State<Hadeethtabview> createState() => _HadeethtabviewState();
}

class _HadeethtabviewState extends State<Hadeethtabview> {
  final PageController _controller = PageController(
    viewportFraction: .75,
    initialPage: 0,
  );
  int curuntpage = 0;
  List<dynamic> ahadeethList = [];
  List <Hadeethmodel>   hadeethdata = [];
  
  @override
  Widget build(BuildContext context) {
//   bool isfirstbuilde = true;
// if (isfirstbuilde) {
//     loadHadeeth(hadeethdata.length);
//       isfirstbuilde = false;
//     }
    
    return Stack(
      children: [
        Bgimage(imagepath: Assets.hadeethbg.path),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 10),
          child: Column(
            children: [
              Bordingstack(),
              Gap(20),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    curuntpage = value;
                    setState(() {});
                  },
                  controller: _controller,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    bool isactive = index == curuntpage;
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: isactive ? 0 : 20,
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(40),
                        ),
                        color: AppColors.goldColor,
                        child:
                            //  Image.asset(Assets.hadeethCardBg.path , fit: BoxFit.fill,),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20.0,
                                left: 10,
                                right: 10,
                              ),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(
                                    Assets.hadeethCardBg.path,
                                    fit: BoxFit.fill,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 40.0,
                                      horizontal: 30,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          "الحديث الاول",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blackColor,
                                          ),
                                        ),
                                        Gap(15),
                                        Text(
                                          textAlign: TextAlign.justify,
                                          "  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول  , الحديث الاول   ",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blackColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> loadHadeeth(int id) async {
    String ahadeeth = await rootBundle.loadString("assets/Hadeeth/$id+1.txt");
    List ahadeethFinalList = [];
    String title = ahadeeth.trim().split("\n").first;
    int titleLength = title.length;
    String content = ahadeeth.substring(titleLength);
    ahadeethFinalList.add(
      Hadeethmodel(number: id, title: title, content: content),
    );
    ahadeethList = ahadeethFinalList;
    print(ahadeethFinalList.length);
  }
}
