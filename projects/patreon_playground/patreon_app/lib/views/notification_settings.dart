import 'package:flutter/material.dart';
import '../core/themes/custom_theme.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _SettingsState();
}

class _SettingsState extends State<NotificationSettings> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Notification Settings",
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
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "GENERAL",
                style: CustomTheme.customThemeData().textTheme.bodyLarge,
              ),
              const SizedBox(
                width: 70,
              ),
              Text(
                "EMAIL",
                style: CustomTheme.customThemeData().textTheme.bodyLarge,
              ),
              Text(
                "PUSH",
                style: CustomTheme.customThemeData().textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Patreon updates",
                style: CustomTheme.customThemeData().textTheme.bodyMedium,
              ),
              const SizedBox(
                width: 20,
              ),
              Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
              Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Comments",
                style: CustomTheme.customThemeData().textTheme.bodyMedium,
              ),
              const SizedBox(
                width: 60,
              ),
              Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
              Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Messages from creators",
                style: CustomTheme.customThemeData().textTheme.bodyMedium,
              ),
              Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
