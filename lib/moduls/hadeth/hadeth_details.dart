import 'package:flutter/material.dart';
import 'package:islami_app_c9_sun/moduls/hadeth/hadeth_view.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadethdetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_light.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 120),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: theme.textTheme.bodyLarge,
              ),
              Divider(
                color: theme.primaryColor,
                endIndent: 30,
                indent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Text(args.content,
                  textAlign: TextAlign.center, style: theme.textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}
