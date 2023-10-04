import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app_c9_sun/core/provider/app_provider.dart';
import 'package:islami_app_c9_sun/layout/home_layout.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash-screen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeLayout.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var vm = Provider.of<AppProvider>(context);

    return Scaffold(
      body: Image.asset(
        vm.isDark() // true
            ? "assets/images/splash_background_dark.png"
            : "assets/images/splash_background.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
