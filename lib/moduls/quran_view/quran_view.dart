import 'package:flutter/material.dart';
import 'package:isalmi/core/theme/application_theme.dart';
import 'package:isalmi/moduls/quran_view/quran_details_view.dart';
import 'package:isalmi/moduls/quran_view/widget/quran_items.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    List<String> suraItems = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];
    return Column(
      children: [
        Image.asset("assets/images/quran_image.png"),
        Divider(
          color: theme.primaryColor,
          thickness: 1.2,
          height: 5,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
              "رقم السوره",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            )),
            Container(
              width: 1.2,
              color: theme.primaryColor,
              height: 45,
            ),
            Expanded(
                child: Text(
              "أسم السوره",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ))
          ],
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 1.2,
          height: 5,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: suraItems.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, QuranDetailsView.nameId,
                  arguments: SuraDetails(
                      surName: suraItems[index], surNumber: "${index + 1}"));
            },
            child: QuranItems(
                suraName: suraItems[index], suraNumber: "${index + 1}"),
          ),
        ))
      ],
    );
  }
}

class SuraDetails {
  final String surName;
  final String surNumber;

  SuraDetails({required this.surName, required this.surNumber});
}
