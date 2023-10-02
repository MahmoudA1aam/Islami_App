import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalmi/core/provider/app_provider.dart';
import 'package:isalmi/moduls/setting_view/widget/selected_option_widget.dart';
import 'package:isalmi/moduls/setting_view/widget/unselected_option_widget.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    ThemeData theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.75),
              border: Border.all(color: theme.colorScheme.surface),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    appProvider.changeLanguage("en");
                    Navigator.pop(context);
                  },
                  child: appProvider.currentLanguage == "en"
                      ? SelectedOptionWidget(selectedTitle: local.english)
                      : UnSelectedOptionWidget(unselectedTitle: local.english)),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    appProvider.changeLanguage("ar");
                    Navigator.pop(context);
                  },
                  child: appProvider.currentLanguage == "ar"
                      ? SelectedOptionWidget(selectedTitle: local.arabic)
                      : UnSelectedOptionWidget(unselectedTitle: local.arabic)),
            ],
          )),
    );
  }
}
