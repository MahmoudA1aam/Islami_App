import 'package:flutter/material.dart';

class SelectedOptionWidget extends StatelessWidget {
  const SelectedOptionWidget({super.key, required this.selectedTitle});

  final String selectedTitle;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white24, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedTitle,
            style: theme.textTheme.bodyMedium,
          ),
          Icon(
            Icons.check,
            color: theme.colorScheme.surface,
          )
        ],
      ),
    );
  }
}
