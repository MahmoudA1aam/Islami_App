import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        SizedBox(
          height: 70,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.secondary),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageIcon(
              AssetImage("assets/images/Icon metro-next.png"),
              color: theme.colorScheme.onSecondary,
            ),
            ImageIcon(
              AssetImage("assets/images/Icon awesome-play.png"),
              color: theme.colorScheme.onSecondary,
              size: 45,
            ),
            ImageIcon(AssetImage("assets/images/Group 7.png"),
                color: theme.colorScheme.onSecondary)
          ],
        )
      ],
    );
  }
}
