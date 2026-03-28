import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/shared/bgimage.dart';
import 'package:islamy_app2/widgets/bordingstack.dart';

class Sebhatabview extends StatefulWidget {
  const Sebhatabview({super.key});

  @override
  State<Sebhatabview> createState() => _SebhatabviewState();
}

class _SebhatabviewState extends State<Sebhatabview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Bgimage(imagepath: Assets.sebhaBg.path),
          Column(
            children: [
              Bordingstack(),
              Text(
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              Container(width: 150, child: Image.asset(Assets.sebhaHead.path)),
              Stack(
                children: [
                  Container(
                    width: 350,
                    child: Image.asset(Assets.sebhaBody1.path),
                  ),
                  Center(
                    child: Column(
                      children: [Text("سبحان الله"), Text("سبحان الله")],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
