import 'package:flutter/material.dart';

class SettingsItemWidget extends StatelessWidget {
  final String optionTitle;
  final String selectedOptionTitle;
  final GestureTapCallback onClickCallback;

  const SettingsItemWidget({
    super.key,
    required this.optionTitle,
    required this.selectedOptionTitle,
    required this.onClickCallback,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          optionTitle,
          style: theme.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: onClickCallback,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: mediaQuery.size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: theme.colorScheme.onPrimary,
                width: 2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(selectedOptionTitle),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 28,
                  color: theme.colorScheme.onSecondary,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
