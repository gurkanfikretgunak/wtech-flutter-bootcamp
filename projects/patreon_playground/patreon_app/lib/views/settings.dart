import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/customAppBar.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Settings",
        w: 110,
        color: Colors.white,
        con: Icons.arrow_back,
        iColor: Colors.grey,
        press: () {
          Navigator.pushNamed(context, "/navigate");
        },
      ),
      body: Column(children: [
        SettingsRows(
          tap: () {},
          text: "Apparence",
        ),
        SettingsRows(
          tap: () {},
          text: "Notification settings",
        ),
        SettingsRows(
          tap: () {},
          text: "Private profile",
        ),
        const SizedBox(
          height: 20,
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
          tap: () {},
          text: "App info",
        ),
      ]),
    );
  }
}
