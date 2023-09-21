import 'package:flutter/material.dart';
import 'package:isalmi/core/theme/application_theme.dart';
import 'package:isalmi/layout/home_layout.dart';
import 'package:isalmi/moduls/hadeth_view/hadeth_details_view.dart';
import 'package:isalmi/moduls/quran_view/quran_details_view.dart';
import 'package:isalmi/moduls/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.nameId,
      routes: {
        SplashScreen.nameId: (context) => const SplashScreen(),
        HomeLayout.nameId: (context) => HomeLayout(),
        QuranDetailsView.nameId: (context) => QuranDetailsView(),
        HadethDetailsView.nameId: (context) => HadethDetailsView(),
      },
    );
  }
}
