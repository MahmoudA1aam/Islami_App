import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalmi/core/provider/app_provider.dart';
import 'package:isalmi/core/theme/application_theme.dart';
import 'package:isalmi/layout/home_layout.dart';
import 'package:isalmi/moduls/hadeth_view/hadeth_details_view.dart';
import 'package:isalmi/moduls/quran_view/quran_details_view.dart';
import 'package:isalmi/moduls/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const MyApplication()));
}

///
class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
      locale: Locale(appProvider.currentLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode: appProvider.currentTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.nameId,
      routes: {
        SplashScreen.nameId: (context) => const SplashScreen(),
        HomeLayout.nameId: (context) => HomeLayout(),
        QuranDetailsView.nameId: (context) => QuranDetailsView(),
        HadethDetailsView.nameId: (context) => const HadethDetailsView(),
      },
    );
  }
}
