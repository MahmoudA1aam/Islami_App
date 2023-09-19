import 'package:flutter/material.dart';
import 'package:isalmi/moduls/Radio_view/radio_view.dart';
import 'package:isalmi/moduls/hadeth_view/hadeth_view.dart';
import 'package:isalmi/moduls/quran_view/quran_view.dart';
import 'package:isalmi/moduls/setting_view/setting_view.dart';
import 'package:isalmi/moduls/tasbeh_view/tasbeh_view.dart';

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
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("أسلامي"),
          ),
          body: Screens[selectedindex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedindex = index;
              });
            },
            currentIndex: selectedindex,
            items: const [
              BottomNavigationBarItem(
                  label: "quran",
                  icon: ImageIcon(AssetImage("assets/images/quran.png"))),
              BottomNavigationBarItem(
                  label: "Hadeth",
                  icon: ImageIcon(
                      AssetImage("assets/images/quran-quran-svgrepo-com.png"))),
              BottomNavigationBarItem(
                  label: "Tasbeh",
                  icon: ImageIcon(AssetImage("assets/images/sebha.png"))),
              BottomNavigationBarItem(
                  label: "Radio",
                  icon: ImageIcon(AssetImage("assets/images/radio.png"))),
              BottomNavigationBarItem(
                  label: "Setting", icon: Icon(Icons.settings)),
            ],
          ),
        ));
  }
}
