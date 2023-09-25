import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalmi/moduls/hadeth_view/hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHedeth = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (allHedeth.isEmpty) {
      readfile();
    }
    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
      const Divider(
          thickness: 1.5,
          indent: 30,
          endIndent: 30,
        ),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        const Divider(
          thickness: 1.5,
          indent: 30,
          endIndent: 30,
        ),
        Expanded(
            child: ListView.separated(
          itemCount: allHedeth.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadethDetailsView.nameId,
                    arguments: HadethContent(
                        tilte: allHedeth[index].tilte,
                        content: allHedeth[index].content));
              },
              child: Text(
                allHedeth[index].tilte,
                textAlign: TextAlign.center,
              )),
              separatorBuilder: (context, index) => const Divider(
            thickness: 1.5,
            indent: 60,
            endIndent: 60,
          ),
        ))
      ],
    );
  }

  Future readfile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = [];
    allHadeth = text.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int indexFirsLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexFirsLine);
      String content = singleHadeth.substring(indexFirsLine + 1);
      HadethContent hadethContent =
          HadethContent(tilte: title, content: content);
      setState(() {
        allHedeth.add(hadethContent);
      });
    }
  }
}

class HadethContent {
  final String tilte;
  final String content;

  HadethContent({required this.tilte, required this.content});
}
