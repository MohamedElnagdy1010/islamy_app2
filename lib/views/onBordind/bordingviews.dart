// ignore_for_file: camel_case_types, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:islamy_app2/views/homeview.dart';
import 'package:islamy_app2/views/onBordind/hadethbordingview.dart';
import 'package:islamy_app2/views/onBordind/quranbordingviwe.dart';
import 'package:islamy_app2/views/onBordind/radiobordingview.dart';
import 'package:islamy_app2/views/onBordind/sebhabordingview.dart';
import 'package:islamy_app2/views/onBordind/wellcomview.dart';
import 'package:islamy_app2/widgets/bordingstack.dart';
import 'package:islamy_app2/widgets/prefs_helper.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class bordingviews extends StatefulWidget {
  const bordingviews({super.key});

  @override
  State<bordingviews> createState() => _bordingviewsState();
}

class _bordingviewsState extends State<bordingviews> {
  int count = 0;
  PageController controller = PageController();
  bool isfinish = false;
  List<Widget> bordingviews = [
    Wellcomview(),
    Hadethbordingview(),
    Quranbordingviwe(),
    Radiobordingview(),
    Sebhabordingview(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Bordingstack(),
          SizedBox(
            height: 500,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  count = index;
                  isfinish = index == bordingviews.length - 1;
                });
              },
              controller: controller,
              itemCount: bordingviews.length,
              itemBuilder: (context, index) {
                return bordingviews[index];
              },
            ),
          ),
        ],
      ),

      bottomSheet: Container(
        height: 80,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              // onPressed: () {
              //   controller.previousPage(
              //     duration: Duration(milliseconds: 500),
              //     curve: Curves.ease,
              //   );
              // },
              onPressed: () async {
                if (isfinish) {
                  await PrefsHelper.setOnboardingSeen();

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Homeview()),
                  );
                } else {
                  controller.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },

              child: Text(
                "previos",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: bordingviews.length,
              effect: WormEffect(),
            ),

            // TextButton(
            //   onPressed: () {
            //     if (count < bordingviews.length - 1) {
            //       count++;
            //       controller.animateToPage(
            //         count,
            //         duration: Duration(milliseconds: 500),
            //         curve: Curves.ease,
            //       );
            //       if (isfinish == true) {
            //         Navigator.pushReplacement(
            //           context,
            //           MaterialPageRoute(builder: (context) => Homeview()),
            //         );
            //         setState(() {});
            //       }
            //     }
            //   },
            //   child: Text(
            //     isfinish ? "Finish" : "Next",
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            //   ),
            // ),
            TextButton(
              onPressed: () {
                if (isfinish) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Homeview()),
                  );
                } else {
                  controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
              child: Text(
                isfinish ? "Finish" : "Next",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
