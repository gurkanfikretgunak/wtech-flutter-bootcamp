// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/core/provider/service_provider.dart';
import 'package:todoist_app/views/auth/information_page_view.dart';
import 'package:todoist_app/widgets/button_widgets/welcome_button.dart';
import '../../constants/image/image_path_constants.dart';
import '../../constants/text/auth_constants.dart';
import '../../core/provider/theme_change_provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appModel = Provider.of<ThemeChangeProvider>(context);
    ServiceProvider _serviceProvider = Provider.of<ServiceProvider>(context);

    return Consumer<ThemeChangeProvider>(
        builder: (c, themeProvider, _) => Column(children: [
              Container(
                  width: 500,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(height: 30, child: Image.asset(CustomImagePathConstants.appIconPath)),
                    )
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 15),
                  child: Text("Hi ${_serviceProvider.userName}",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 20, color: Colors.black))),
              Text(CustomTextConstants.pickThemeText,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 15, color: Colors.grey[600])),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Stack(children: [
                    SizedBox(
                        height: 120,
                        width: 400,
                        child: GestureDetector(
                          onTap: () {
                            appModel.darkTheme = false;
                          },
                          child: Image.asset(CustomImagePathConstants.lightThemePath, fit: BoxFit.fill),
                        )),
                    Positioned(
                        right: 24,
                        bottom: 24,
                        child: appModel.darkTheme
                            ? Container(width: 30, height: 30, color: Colors.white)
                            : const Icon(Icons.check_circle))
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 100),
                  child: Stack(children: [
                    SizedBox(
                        height: 120,
                        width: 400,
                        child: GestureDetector(
                            onTap: () {
                              appModel.darkTheme = true;
                            },
                            child: Image.asset(CustomImagePathConstants.darkThemePath, fit: BoxFit.fill))),
                    Positioned(
                        right: 25,
                        bottom: 22,
                        child:
                            !appModel.darkTheme ? const SizedBox() : const Icon(Icons.check_circle, color: Colors.grey))
                  ])),
              const CustomButtonWelcome(widName: InformationApp(), color: Colors.red, text: "Open my Todoist")
            ]));
  }
}
