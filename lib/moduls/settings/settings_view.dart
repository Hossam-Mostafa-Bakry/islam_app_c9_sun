import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c9_sun/core/provider/app_provider.dart';
import 'package:islami_app_c9_sun/moduls/settings/widgets/theme_bottom_sheet_widget.dart';
import 'package:provider/provider.dart';

import 'widgets/language_bottom_sheet_widget.dart';
import 'widgets/settings_item_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsItemWidget(
            optionTitle: local.language,
            selectedOptionTitle:
                vm.currentLanguage == "en" ? "English" : "عربي",
            onClickCallback: () {
              showLanguageBottomSheet();
            },
          ),
          SizedBox(height: 40),
          SettingsItemWidget(
            optionTitle: local.theme_mode,
            selectedOptionTitle: vm.isDark() ? local.dark : local.light,
            onClickCallback: () {
              showThemeBottomSheet();
            },
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheetWidget(),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheetWidget(),
    );
  }
}
