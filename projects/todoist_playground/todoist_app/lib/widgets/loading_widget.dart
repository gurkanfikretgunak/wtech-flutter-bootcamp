import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todoist_app/views/information_page_view.dart';
import 'package:todoist_app/widgets/custom_methods.dart';
import '../constants/custom_constants.dart';
import '../core/themes/custom_themes.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key, required this.logText}) : super(key: key);
  final String logText;

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 100,
            child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Lottie.asset(CustomImagePathConstants.loadingLottiePath)),
          ),
          Center(
            child: Text(
              widget.logText,
              style: CustomTheme.customLightThemeData().textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
