import 'package:flutter/material.dart';
import 'package:islami_app_c9_sun/core/provider/app_provider.dart';
import 'package:islami_app_c9_sun/moduls/settings/widgets/unSelectedOption.dart';
import 'package:provider/provider.dart';

import 'selected_option_widget.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              vm.changeLanguage("en");
              Navigator.pop(context);
            },
            child: vm.currentLanguage == "en"
                ? SelectedOptionWidget(selectedOption: "English")
                : UnSelectedOption(selectedOption: "English"),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              vm.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: vm.currentLanguage == "en"
                ? UnSelectedOption(selectedOption: "عربي")
                : SelectedOptionWidget(selectedOption: "ar"),
          ),
        ],
      ),
    );
  }
}
