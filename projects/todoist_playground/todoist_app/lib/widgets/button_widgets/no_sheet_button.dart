// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/views/auth/sign_up_page_view.dart';

import '../../core/provider/service_provider.dart';

class NoSheetButton extends StatelessWidget {
  const NoSheetButton({
    Key? key,
    required this.text,
    required this.widName,
    this.buttonColor,
  }) : super(key: key);
  final String text;
  final String widName;
  final Color? buttonColor;
  @override
  Widget build(BuildContext context) {
    ServiceProvider _serviceProvider = Provider.of<ServiceProvider>(context);
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: () async {
          if (text == "Log Out") {
            _serviceProvider.userName = " ";
            _serviceProvider.userEmail = " ";
          }
          await _serviceProvider.loginAction();
          // ignore: use_build_context_synchronously
          Navigator.pushNamed(context, widName);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor ?? Colors.red),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: text == "Log Out"
                ? Theme.of(context).textTheme.caption?.copyWith(color: Colors.red)
                : Theme.of(context).textTheme.caption,
          ),
        ),
      ),
    );
  }
}
