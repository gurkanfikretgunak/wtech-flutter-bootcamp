import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/custom_constants.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: Lottie.asset(CustomImagePathConstants.loadingLottiePath),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              widget.logText,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 18, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
