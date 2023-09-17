import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Settings View",
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
