import 'package:flutter/material.dart';
import 'package:islamy_app2/shared/app_theam.dart';
import 'package:islamy_app2/views/homeview.dart';
import 'package:islamy_app2/views/onBordind/bordingviews.dart';
import 'package:islamy_app2/views/tabs/qurantab/sura_details_page.dart';

import 'package:islamy_app2/widgets/prefs_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool seen = await PrefsHelper.isOnboardingSeen();

  runApp(MyApp(seen));
}

class MyApp extends StatelessWidget {
  final bool seen;

  const MyApp(this.seen, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheam,

      debugShowCheckedModeBanner: false,
      routes: {
        Homeview.routeName: (context) => Homeview(),
        Bordingviews.routeName: (context) => Bordingviews(),
        SuraDetailsPage.routeName:(context)=>SuraDetailsPage()
      },
      initialRoute: seen ? Homeview.routeName : Bordingviews.routeName,
    );
  }
}
