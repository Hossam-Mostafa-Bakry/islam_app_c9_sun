import 'package:flutter/material.dart';

class UnSelectedOption extends StatelessWidget {
  final String selectedOption;

  const UnSelectedOption({
    super.key,
    required this.selectedOption,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(8),
      ),
      // border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedOption,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
