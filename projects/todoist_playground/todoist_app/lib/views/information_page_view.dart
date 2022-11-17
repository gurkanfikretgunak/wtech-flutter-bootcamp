import 'package:flutter/material.dart';
import 'package:todoist_app/constants/custom_constants.dart';
import 'package:todoist_app/core/themes/custom_themes.dart';
import '../widgets/button_widgets/no_sheet_button.dart';
import 'home_page_view.dart';

class InformationApp extends StatelessWidget {
  const InformationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: width,
              height: height / 2.2,
              child: Image.asset(
                CustomImagePathConstants.learnMorePath,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "New and improved task view",
                    style: CustomTheme.customLightThemeData().textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "You have a new task view! See all your task's info - including sub-tasks, comments, due date(and more), all in one place.",
                    style: CustomTheme.customLightThemeData().textTheme.subtitle1!.copyWith(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: NoSheetButton(widName: MyHomePage(), text: CustomTextConstants.learnMoreText),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ));
                },
                child: Text(
                  "Continue",
                  style: CustomTheme.customLightThemeData().textTheme.subtitle1,
                ))
          ],
        ),
      ),
    );
  }
}
