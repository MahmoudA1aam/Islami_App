import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalmi/moduls/hadeth_view/hadeth_view.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class HadethDetailsView extends StatelessWidget {
  const HadethDetailsView({super.key});

  static String nameId = "hadethdetailsview";

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var argu = ModalRoute.of(context)!.settings.arguments as HadethContent;
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
              title: Text(AppLocalizations.of(context)!.islami),
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              margin: const EdgeInsets.only(
                  top: 20, right: 30, left: 30, bottom: 120),
              width: mediaquery.width,
              height: mediaquery.height,
              decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Text(
                    " ${argu.tilte}",
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: theme.colorScheme.onSurface),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Divider(
                    thickness: 1.2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) => Text(
                        argu.content,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: theme.colorScheme.onSurface),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
