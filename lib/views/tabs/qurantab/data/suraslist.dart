import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app2/data/qurandata.dart';
import 'package:islamy_app2/gen/assets.gen.dart';


class Suraslist extends StatelessWidget {
  const Suraslist({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
    
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Suras List",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList.builder(
          itemCount: Qurandata.suras.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.all(0),
                  leading: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(Assets.imgSurNumberFrame),
                      Text(
                        "${index + 1}".toString(),
                        style: TextStyle(
                          fontSize: index > 99 ? 14 : 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                  Qurandata.suras[index].enName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                Qurandata.suras[index].versesCount,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Text(
                Qurandata.suras[index].arName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Divider(thickness: 2, color: Colors.white),
              ],
            );
          },
        ),
      ],
    );
  }
}
