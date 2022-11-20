import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/views/home_page_view.dart';
import '../../constants/custom_constants.dart';
import '../../core/provider/theme_change_provider.dart';
import '../../widgets/button_widgets/no_sheet_button.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appModel = Provider.of<ThemeChangeProvider>(context);

    return Consumer<ThemeChangeProvider>(
      builder: (c, themeProvider, _) => Column(
        children: [
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
            child: Text("Hi Nur!",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 20, color: Colors.black)),
          ),
          Text("Make Todoist yours.Pick a theme:",
              style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 15)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Stack(
              children: [
                SizedBox(
                    height: 120,
                    width: 400,
                    child: GestureDetector(
                      onTap: () {
                        appModel.darkTheme = false;
                      },
                      child: Image.asset(
                        CustomImagePathConstants.lightThemePath,
                        fit: BoxFit.fill,
                      ),
                    )),
                Positioned(
                    right: 25,
                    bottom: 22,
                    child: appModel.darkTheme
                        ? Icon(
                            Icons.check,
                            color: Colors.red,
                          )
                        : Icon(Icons.check_circle))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 100),
            child: Stack(
              children: [
                SizedBox(
                    height: 120,
                    width: 400,
                    child: GestureDetector(
                      onTap: () {
                        appModel.darkTheme = true;
                      },
                      child: Image.asset(
                        CustomImagePathConstants.darkThemePath,
                        fit: BoxFit.fill,
                      ),
                    )),
                Positioned(
                    right: 25,
                    bottom: 22,
                    child: !appModel.darkTheme
                        ? SizedBox()
                        : Icon(
                            Icons.check_circle,
                            color: Colors.grey,
                          ))
              ],
            ),
          ),
          const NoSheetButton(
            text: "Open my Todoist",
            widName: MyHomePage(),
          )
        ],
      ),
    );
  }
}
