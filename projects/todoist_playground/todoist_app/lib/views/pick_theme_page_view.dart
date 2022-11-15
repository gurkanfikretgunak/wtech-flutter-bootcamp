import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/custom_constants.dart';
import '../core/provider/theme_change_provider.dart';
import '../model/themes_model.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ThemeProvider>(
        builder: (c, themeProvider, _) => Card(
          child: Column(
            children: [
              SizedBox(
                  width: 500, height: 40, child: Row(children: [Image.asset(CustomImagePathConstants.appIconPath)])),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: appThemes.length,
                    itemBuilder: (context, index) {
                      bool isSelectedTheme = appThemes[index].mode == themeProvider.selectedThemeMode;
                      return GestureDetector(
                        onTap: isSelectedTheme ? null : () => themeProvider.setSelectedThemeMode(appThemes[index].mode),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AnimatedContainer(
                            height: 100,
                            duration: const Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              color: isSelectedTheme ? Theme.of(context).primaryColor : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2, color: Theme.of(context).primaryColor),
                            ),
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Theme.of(context).cardColor.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(appThemes[index].icon),
                                    Text(
                                      appThemes[index].title,
                                      style: Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
