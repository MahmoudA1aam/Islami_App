import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalmi/moduls/quran_view/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  QuranDetailsView({super.key});

  static String nameId = "qurandetailsview";

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var argu = ModalRoute.of(context)?.settings.arguments as SuraDetails;

    if (content.isEmpty) {
      readFiles(argu.surNumber);
    }
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text("أسلامي"),
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              margin: const EdgeInsets.only(
                  top: 20, right: 30, left: 30, bottom: 120),
              width: mediaquery.width,
              height: mediaquery.height,
              decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "سوره ${argu.surName}",
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.play_circle,
                        size: 27.2,
                      )
                    ],
                  ),
                  Divider(
                    color: theme.primaryColor,
                    thickness: 1.2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: allVerses.length,
                      itemBuilder: (context, index) => Text(
                        content,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )));
  }

  Future readFiles(String index) async {
    String text = await rootBundle.loadString("assets/file/${index}.txt");
    content = text;
    setState(() {
      allVerses = content.split("/n");
    });
    print(content);
  }
}
