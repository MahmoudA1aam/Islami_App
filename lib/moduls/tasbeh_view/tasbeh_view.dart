import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int count = 0;
  int cotTasbeh = 0;

  List<String> allAdaya = [
    "سُبْحَانَ اللَّهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ",
    "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ ",
    "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ",
    "للا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهَِّ",
    "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
    "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد",
    "أستغفر الله",
    "سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ",
    "لَا إِلَهَ إِلَّا اللَّهُ",
    "الْلَّهُ أَكْبَرُ ",
    "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var text = adaya();
    var appProvider = Provider.of<AppProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 90, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: const Alignment(0.3, -2.2),
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          count++;
                          cotTasbeh++;
                        });
                      },
                      child: Image.asset("assets/images/body_of_seb7a.png",
                          color: appProvider.isDark()
                              ? Color(0xFFFACC1D)
                              : Color(0xFFB7935F))),
                  Image.asset("assets/images/head_of_seb7a.png",
                      color: appProvider.isDark()
                          ? Color(0xFFFACC1D)
                          : Color(0xFFB7935F)),
                ],
              ),
            ],
          ),
        ),
        Text("عدد التسبيحات",
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.secondary)),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
              color: theme.colorScheme.onSecondary,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20), bottom: Radius.circular(20))),
          child: Text(
            "$count",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.secondary),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
              color: theme.colorScheme.onSecondary,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30), bottom: Radius.circular(30))),
          child: Text(
            text,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.secondaryContainer),
          ),
        )
      ],
    );
  }

  String adaya() {
    String title;
    if (cotTasbeh == allAdaya.length) {
      cotTasbeh = 0;
    }
    return title = allAdaya[cotTasbeh];
  }
}
