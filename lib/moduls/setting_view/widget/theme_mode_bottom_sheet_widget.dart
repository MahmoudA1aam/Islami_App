import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalmi/moduls/setting_view/widget/selected_option_widget.dart';
import 'package:isalmi/moduls/setting_view/widget/unselected_option_widget.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/app_provider.dart';

class ThemeModeBottomSheetWidget extends StatelessWidget {
  const ThemeModeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
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
                    appProvider.changeTheme(ThemeMode.dark);
                    Navigator.pop(context);
                  },
                  child: appProvider.isDark()
                      ? SelectedOptionWidget(selectedTitle: local.dark)
                      : UnSelectedOptionWidget(unselectedTitle: local.dark)),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    appProvider.changeTheme(ThemeMode.light);
                    Navigator.pop(context);
                  },
                  child: appProvider.isDark()
                      ? UnSelectedOptionWidget(unselectedTitle: local.light)
                      : SelectedOptionWidget(selectedTitle: local.light)),
            ],
          )),
    );
  }
}
