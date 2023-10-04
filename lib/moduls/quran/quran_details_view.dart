import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c9_sun/moduls/quran/quran_view.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "Quran_Details";

  List<String> allVerses = [];

  QuranDetailsView({
    super.key,
  });

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String content = "";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var vm = Provider.of<AppProvider>(context);

    if (content.isEmpty) readFile(args.suraNumber); // async

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(vm.getBackgroundImage()),
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
            color: theme.colorScheme.onBackground,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSecondary,
                      height: 1.8,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: theme.colorScheme.onSecondary,
                  )
                ],
              ),
              Divider(
                endIndent: 30,
                indent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    " (${index + 1}) ${widget.allVerses[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onSecondary,
                    ),
                  ),
                  itemCount: widget.allVerses.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // sync vs async
  readFile(String suraNumber) async {
    String text = await rootBundle.loadString("assets/files/$suraNumber.txt");
    content = text;
    widget.allVerses = content.split("\n");
    setState(() {});
    print(text);
  }
}
