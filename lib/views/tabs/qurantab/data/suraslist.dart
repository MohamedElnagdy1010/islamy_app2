import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app2/data/models/suramodel.dart';
import 'package:islamy_app2/gen/assets.gen.dart';
import 'package:islamy_app2/views/tabs/qurantab/sura_details_page.dart';

class Suraslist extends StatelessWidget {
  const Suraslist({super.key,required this.suras});
  final List<Suramodel> suras;
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
          
          itemCount:suras.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  onTap: () => Navigator.of(context).pushNamed(SuraDetailsPage.routeName,arguments: index+1),
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
                   suras[index].enName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                   suras[index].versesCount,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Text(
                   suras[index].arName,
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
