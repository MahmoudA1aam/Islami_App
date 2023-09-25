import 'package:flutter/material.dart';

typedef SettingOptionClicke = void Function();

class SettingItem extends StatelessWidget {
  const SettingItem(
      {super.key,
      required this.onOptionTape,
      required this.onOptionTitle,
      required this.onOptionSelect});

  final String onOptionTitle, onOptionSelect;
  final SettingOptionClicke onOptionTape;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          onOptionTitle,
          style: theme.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: () {
            onOptionTape();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color: theme.colorScheme.onSecondary, width: 1.2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  onOptionSelect,
                  style: const TextStyle(fontSize: 30),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: theme.colorScheme.secondary,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
