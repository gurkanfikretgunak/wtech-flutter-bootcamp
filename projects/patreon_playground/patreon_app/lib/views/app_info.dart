import 'package:flutter/material.dart';
import '../core/themes/custom_theme.dart';

class AppInfo extends StatefulWidget {
  const AppInfo({super.key});

  @override
  State<AppInfo> createState() => _SettingsState();
}

class _SettingsState extends State<AppInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "App info",
          style: CustomTheme.customThemeData().textTheme.labelMedium,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/settings");
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 35,
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 7, 0, 10),
            child: Text(
              "ABOUT PATREON",
              style: CustomTheme.customThemeData().textTheme.bodyLarge,
            ),
          ),
        ),
        ListTile(
          title: Text(
            "App version",
            style: CustomTheme.customThemeData().textTheme.bodyMedium,
          ),
          subtitle: Text(
            "18.0.36",
            style: CustomTheme.customThemeData().textTheme.labelSmall,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            "Build number",
            style: CustomTheme.customThemeData().textTheme.bodyMedium,
          ),
          subtitle: Text(
            "2483",
            style: CustomTheme.customThemeData().textTheme.labelSmall,
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.6,
          color: Colors.black12,
        )
      ]),
    );
  }
}
