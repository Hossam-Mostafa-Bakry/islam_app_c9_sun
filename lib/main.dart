import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c9_sun/core/provider/app_provider.dart';
import 'package:islami_app_c9_sun/core/theme/application_theme.dart';
import 'package:islami_app_c9_sun/layout/home_layout.dart';
import 'package:islami_app_c9_sun/moduls/hadeth/hadeth_details.dart';
import 'package:islami_app_c9_sun/moduls/quran/quran_details_view.dart';
import 'package:islami_app_c9_sun/moduls/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: const MyApplication(),
    ),
  );
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode: provider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.currentLanguage),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
