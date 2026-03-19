import 'package:flutter/material.dart';

class Bgimage extends StatelessWidget {
   const Bgimage({super.key, required this.imagepath});
final String imagepath;
  @override
  Widget build(BuildContext context) {
    return   Image.asset(
          imagepath,
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        )
;
  }
}