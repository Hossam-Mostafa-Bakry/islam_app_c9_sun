import 'package:flutter/material.dart';
import 'package:islami_app_c9_sun/core/provider/app_provider.dart';
import 'package:islami_app_c9_sun/moduls/settings/widgets/unSelectedOption.dart';
import 'package:provider/provider.dart';

import 'selected_option_widget.dart';

class ThemeBottomSheetWidget extends StatelessWidget {
  const ThemeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: provider.isDark()
                ? const SelectedOptionWidget(selectedOption: "Dark")
                : const UnSelectedOption(selectedOption: "Dark"),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: provider.isDark()
                ? const UnSelectedOption(selectedOption: "Light")
                : const SelectedOptionWidget(selectedOption: "Light"),
          ),
        ],
      ),
    );
  }
}
