import 'package:flutter/material.dart';

class UnSelectedOptionWidget extends StatelessWidget {
  const UnSelectedOptionWidget({super.key, required this.unselectedTitle});

  final String unselectedTitle;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white10, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            unselectedTitle,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
