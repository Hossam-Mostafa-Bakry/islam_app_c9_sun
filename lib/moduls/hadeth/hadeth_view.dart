import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c9_sun/moduls/hadeth/hadeth_details.dart';

class HadethView extends StatelessWidget {
  HadethView({super.key});

  List<HadethData> allHadethData = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    readFile();
    return Column(
      children: [
        Image.asset("assets/images/hadeth_header.png"),
        Divider(
          thickness: 1.5,
          indent: 10,
          endIndent: 10,
          height: 5,
          color: theme.primaryColor,
        ),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        Divider(
          thickness: 1.5,
          indent: 10,
          endIndent: 10,
          height: 5,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadethDetails.routeName,
                    arguments: allHadethData[index]);
              },
              child: Text(
                allHadethData[index].title,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              color: theme.primaryColor,
              height: 10,
              endIndent: 60,
              indent: 60,
              thickness: 1,
            ),
            itemCount: allHadethData.length,
          ),
        )
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    print(text);
    // 1- split text to list of single hadeth
    // 2- split title
    // 3- split content

    List<String> allHadeth = text.split("#");

    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadth = allHadeth[i].trim();

      int indexOfFirstLine = singleHadth.indexOf("\n");

      String title = singleHadth.substring(0, indexOfFirstLine);
      String content = singleHadth.substring(indexOfFirstLine + 1);

      HadethData hadethData = HadethData(title: title, content: content);
      allHadethData.add(hadethData);

      print(title);
    }
  }
}

class HadethData {
  final String title;
  final String content;

  HadethData({required this.title, required this.content});
}
