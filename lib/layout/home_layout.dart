import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalmi/moduls/Radio_view/radio_view.dart';
import 'package:isalmi/moduls/hadeth_view/hadeth_view.dart';
import 'package:isalmi/moduls/quran_view/quran_view.dart';
import 'package:isalmi/moduls/setting_view/setting_view.dart';
import 'package:isalmi/moduls/tasbeh_view/tasbeh_view.dart';
import 'package:provider/provider.dart';

import '../core/provider/app_provider.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  static const String nameId = "home_layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedindex = 0;
  List<Widget> Screens = const [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingView()
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(appProvider.isDark()
                    ? "assets/images/background_dark.png"
                    : "assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islami,
              style: TextStyle(color: theme.colorScheme.secondary),
            ),
          ),
          body: Screens[selectedindex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedindex = index;
              });
            },
            currentIndex: selectedindex,
            items: [
              BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.quran,
                  icon: const ImageIcon(AssetImage("assets/images/quran.png"))),
              BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.hadeth,
                  icon: const ImageIcon(
                      AssetImage("assets/images/quran-quran-svgrepo-com.png"))),
              BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.tasbeh,
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png"))),
              BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.radio,
                  icon: const ImageIcon(AssetImage("assets/images/radio.png"))),
              BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.settings,
                  icon: Icon(Icons.settings)),
            ],
          ),
        ));
  }
}
