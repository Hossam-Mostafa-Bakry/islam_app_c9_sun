import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c9_sun/core/provider/app_provider.dart';
import 'package:islami_app_c9_sun/moduls/hadeth/hadeth_view.dart';
import 'package:islami_app_c9_sun/moduls/quran/quran_view.dart';
import 'package:islami_app_c9_sun/moduls/radio/radio_view.dart';
import 'package:islami_app_c9_sun/moduls/settings/settings_view.dart';
import 'package:islami_app_c9_sun/moduls/tasbeh/tasbeh_view.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    const TasbehView(),
    const RadioView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var vm = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(vm.getBackgroundImage()),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(local.islami)),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/quran_icon.png"),
              ),
              label: local.quran,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/hadeth_icon.png"),
              ),
              label: local.hadeth,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/sebha_icon.png"),
              ),
              label: local.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/radio_icon.png"),
              ),
              label: local.radio,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: local.settings,
            ),
          ],
        ),
      ),
    );
  }
}
