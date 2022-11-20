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

    return Scaffold(
      body: Consumer<ThemeChangeProvider>(
        builder: (c, themeProvider, _) => Card(
          child: Column(
            children: [
              SizedBox(
                  width: 500, height: 40, child: Row(children: [Image.asset(CustomImagePathConstants.appIconPath)])),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: SizedBox(
                  height: 400,
                  child: FloatingActionButton(
                    onPressed: () {
                      appModel.darkTheme = !appModel.darkTheme;
                    },
                    child: Text('Toggle dark theme'),
                  ),
                ),
              ),
              const NoSheetButton(
                text: "Open my Todoist",
                widName: MyHomePage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
