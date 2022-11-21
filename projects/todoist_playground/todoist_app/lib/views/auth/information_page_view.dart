import 'package:flutter/material.dart';
import 'package:todoist_app/constants/text/auth_constants.dart';
import 'package:todoist_app/constants/router_name_constants.dart';
import '../../constants/image/image_path_constants.dart';
import '../../widgets/button_widgets/no_sheet_button.dart';

class InformationApp extends StatelessWidget {
  const InformationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: width,
            height: height / 2.2,
            child: Image.asset(CustomImagePathConstants.learnMorePath, fit: BoxFit.fill),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(CustomTextConstants.newTasViewText, style: Theme.of(context).textTheme.headline1),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(CustomTextConstants.homeTaskInfoText,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 18),
                      textAlign: TextAlign.center)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: NoSheetButton(widName: homeRoute, text: CustomTextConstants.learnMoreText),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, homeRoute);
              },
              child: Text(CustomTextConstants.continueText, style: Theme.of(context).textTheme.subtitle1))
        ],
      ),
    );
  }
}
