import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int count = 0;
  int cotTasbeh = 0;

  List<String> allAdaya = [
    "سبحان الله",
    "ان لله وان اليه راجعون",
    "الحمد للله",
    "اللهم صلي وسلم علي سيدنا محمد",
    "سبحان ربه الاعلي"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    print(allAdaya.length - 1);
    print(adaya());
    var text = adaya();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 140, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: const AlignmentDirectional(0.3, -2.2),
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          count++;
                          cotTasbeh++;
                        });
                      },
                      child: Image.asset("assets/images/body_of_seb7a.png")),
                  Image.asset("assets/images/head_of_seb7a.png"),
                ],
              ),
            ],
          ),
        ),
        Text(
          "عدد التسبيحات",
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20), bottom: Radius.circular(20))),
          child: Text(
            "$count",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30), bottom: Radius.circular(30))),
          child: Text(
            text,
            style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
          ),
        )
      ],
    );
  }

  String adaya() {
    String title = "";
    if (cotTasbeh == allAdaya.length - 1) {
      cotTasbeh = 0;
    } else {
      title = allAdaya[cotTasbeh];
    }
    return title;
  }
}
