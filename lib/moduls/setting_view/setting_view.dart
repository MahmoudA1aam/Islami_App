import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalmi/core/provider/app_provider.dart';
import 'package:isalmi/moduls/setting_view/widget/setting_item.dart';
import 'package:isalmi/moduls/setting_view/widget/theme_mode_bottom_sheet_widget.dart';
import 'package:provider/provider.dart';

import 'widget/language_bottom_sheet_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        children: [
          SettingItem(
            onOptionTitle: local.language,
            onOptionSelect:
                appProvider.currentLanguage == "en" ? "English" : "عربي",
            onOptionTape: () {
              showLanguageBottomSheet(context);
            },
          ),
          SettingItem(
            onOptionTitle: local.theme_mode,
            onOptionSelect: appProvider.isDark() ? local.dark : local.light,
            onOptionTape: () {
              showThemeBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }
}

showLanguageBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => LanguageBottomSheetWidget(),
  );
}

showThemeBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => ThemeModeBottomSheetWidget(),
  );
}
