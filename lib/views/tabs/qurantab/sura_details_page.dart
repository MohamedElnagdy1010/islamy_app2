import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:islamy_app2/data/models/suramodel.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/app_colors.dart';

class SuraDetailsPage extends StatefulWidget {
  const SuraDetailsPage({super.key});
  static const String routeName = "/SuraDetailsPage";

  @override
  State<SuraDetailsPage> createState() => _SuraDetailsPageState();
}

class _SuraDetailsPageState extends State<SuraDetailsPage> {
  List<String> suraayat = [];
  bool isfirstbuilde = true;
  @override
  Widget build(BuildContext context) {
    Suramodel suraData =
        ModalRoute.of(context)?.settings.arguments as Suramodel;

    if (isfirstbuilde) {
      loadsura(suraData.number);
      isfirstbuilde = false;
    }

    return Scaffold(
      appBar: AppBar(title: Text(suraData.enName), centerTitle: true),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.suraDetails.path)),
        ),

        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 20),
                child: Text(
                  "   سورة ${suraData.arName}",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.goldColor,
                  ),
                ),
              ),
              Text(
                  " بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.goldColor,
                  ),
                ),
            Gap(10),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.goldColor,
                        ),
                        children: List.generate(
                          suraayat.length,
                          (index) => TextSpan(
                            text: suraayat[index] + " (${index + 1}) ",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(90),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadsura(int id) async {
    String suracontent = await rootBundle.loadString("assets/Suras/$id.txt");

    List<String> ayat = suracontent.trim().split("\n");
    suraayat = ayat;
    print(ayat);
    setState(() {});
  }
}
