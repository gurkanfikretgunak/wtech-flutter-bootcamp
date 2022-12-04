import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../core/themes/custom_theme.dart';
import '../widgets/settingsRows.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Settings",
          style: CustomTheme.customThemeData().textTheme.labelMedium,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/navigate");
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      body: Column(children: [
        SettingsRows(
          tap: () {},
          text: "Apparence",
        ),
        SettingsRows(
          tap: () {
            Navigator.pushNamed(context, "/notification");
          },
          text: "Notification settings",
        ),
        ListTile(
          title: Text(
            "Private profile",
            style: CustomTheme.customThemeData().textTheme.bodyMedium,
          ),
          subtitle: Text(
            "Hide your pledges from the public",
            style: CustomTheme.customThemeData().textTheme.displayMedium,
          ),
          trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeTrackColor: Colors.red.shade100,
            activeColor: Colors.red,
          ),
        ),
        Container(
          height: 20,
          color: Colors.black12,
        ),
        SettingsRows(
          tap: () {
            _launchUrl("https://www.patreon.com/policy/legal");
          },
          text: "Terms of service",
        ),
        SettingsRows(
          tap: () {
            _launchUrl("https://www.patreon.com/policy/guidelines");
          },
          text: "Community guidelines",
        ),
        SettingsRows(
          tap: () {
            _launchUrl("https://www.patreon.com/policy/accessibility");
          },
          text: "Accessibility statements",
        ),
        SettingsRows(
          tap: () {},
          text: "Give feedback",
        ),
        SettingsRows(
          tap: () {
            Navigator.pushNamed(context, "/appInfo");
          },
          text: "App info",
        ),
        Container(
          height: 130,
          width: 420,
          color: Colors.black12,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.logout_outlined,
                          color: Colors.black,
                        ),
                        Text(
                          "Log out",
                          style: CustomTheme.customThemeData()
                              .textTheme
                              .labelMedium,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
