import 'package:flutter/material.dart';
import 'package:isalmi/moduls/setting_view/widget/selected_option_widget.dart';
import 'package:isalmi/moduls/setting_view/widget/unselected_option_widget.dart';

class ThemeModeBottomSheetWidget extends StatelessWidget {
  const ThemeModeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.75),
              border: Border.all(color: theme.colorScheme.surface),
              borderRadius: BorderRadius.circular(25)),
          child: const Column(
            children: [
              SelectedOptionWidget(selectedTitle: "Dark"),
              SizedBox(
                height: 30,
              ),
              UnSelectedOptionWidget(unselectedTitle: "Light"),
            ],
          )),
    );
  }
}
