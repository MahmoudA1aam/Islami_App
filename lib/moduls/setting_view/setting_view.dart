import 'package:flutter/material.dart';
import 'package:isalmi/moduls/setting_view/widget/setting_item.dart';
import 'package:isalmi/moduls/setting_view/widget/theme_mode_bottom_sheet_widget.dart';

import 'widget/language_bottom_sheet_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        children: [
          SettingItem(
            onOptionTitle: "Language",
            onOptionSelect: "English",
            onOptionTape: () {
              showLanguageBottomSheet(context);
            },
          ),
          SettingItem(
            onOptionTitle: "Theme Mode",
            onOptionSelect: "Light",
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
