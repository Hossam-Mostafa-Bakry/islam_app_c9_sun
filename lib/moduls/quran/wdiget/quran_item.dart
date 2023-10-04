import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String suraName;
  final String suraNubmer;

  const QuranItem({
    super.key,
    required this.suraName,
    required this.suraNubmer,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNubmer,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Container(
          width: 1.6,
          height: 45,
          color: theme.colorScheme.onPrimary,
        ),
        Expanded(
          child: Text(
            suraName,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
