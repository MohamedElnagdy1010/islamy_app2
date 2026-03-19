import 'package:flutter/material.dart';

import 'package:islamy_app2/gen/assets.gen.dart';

class Bordingstack extends StatelessWidget {
  const Bordingstack({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(
            //alignment: AlignmentGeometry.bottomCenter,
            children: [
              Image.asset(Assets.mosque011.path, width: double.infinity),

              Positioned(
                bottom: 30,
                left: 100,
                child: Image.asset(Assets.islami.path, width: 166),
              ),
            ],
          )
        ;
  }
}