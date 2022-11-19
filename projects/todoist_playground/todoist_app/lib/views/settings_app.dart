import 'package:flutter/material.dart';
import 'package:todoist_app/core/themes/custom_themes.dart';

class SettingsApp extends StatefulWidget {
  const SettingsApp({Key? key}) : super(key: key);

  @override
  State<SettingsApp> createState() => _SettingsAppState();
}

class _SettingsAppState extends State<SettingsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",
            style: CustomTheme.customLightThemeData().textTheme.headline2?.copyWith(fontSize: 19, color: Colors.black)),
        centerTitle: true,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text("Done",
                  style: CustomTheme.customLightThemeData()
                      .textTheme
                      .headline2
                      ?.copyWith(fontSize: 17, color: Colors.red)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Center(
              child: Column(
                children: [
                  const CustomOneCard(icon: Icons.star_border_outlined, iconText: 'Todoist Pro'),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20,
                    ),
                    child: CustomForListCard(),
                  ),
                  const CustomToCard(),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 23,
                    ),
                    child: CustomHelpListCard(),
                  ),
                  const CustomLogOutCard(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 20,
                    ),
                    child: Text(
                      "Logged in as: nur@gmail.com",
                      style: CustomTheme.customLightThemeData().textTheme.subtitle1,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomToCard extends StatelessWidget {
  const CustomToCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        width: 400,
        height: 110,
        child: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            const ListTile(
                leading: Icon(
                  Icons.alarm_outlined,
                  color: Colors.red,
                ),
                title: Text('Reminders'),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                )),
            const ListTile(
                leading: Icon(
                  Icons.notifications_none,
                  color: Colors.red,
                ),
                title: Text('Notifications'),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                )),
          ]).toList(),
        ),
      ),
    );
  }
}

class CustomOneCard extends StatelessWidget {
  const CustomOneCard({
    Key? key,
    required this.icon,
    required this.iconText,
  }) : super(key: key);
  final IconData icon;
  final String iconText;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        width: 400,
        height: 60,
        child: ListTile(
            leading: Icon(
              icon,
              color: Colors.red,
            ),
            title: Text(iconText),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
            )),
      ),
    );
  }
}

class CustomLogOutCard extends StatelessWidget {
  const CustomLogOutCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
          width: 400,
          height: 50,
          child: TextButton(
            onPressed: () {},
            child: Text("Log Out",
                textAlign: TextAlign.center,
                style:
                    CustomTheme.customLightThemeData().textTheme.headline2?.copyWith(fontSize: 17, color: Colors.red)),
          )),
    );
  }
}

class CustomForListCard extends StatelessWidget {
  const CustomForListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: const SizedBox(
        width: 400,
        height: 220,
        child: CustomForList(),
      ),
    );
  }
}

class CustomForList extends StatelessWidget {
  const CustomForList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(context: context, tiles: [
        const ListTile(
            leading: Icon(
              Icons.account_circle_outlined,
              color: Colors.red,
            ),
            title: Text('Account'),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
            )),
        const ListTile(
            leading: Icon(
              Icons.settings_applications_outlined,
              color: Colors.red,
            ),
            title: Text('General'),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
            )),
        const ListTile(
            leading: Icon(
              Icons.color_lens_outlined,
              color: Colors.red,
            ),
            title: Text('Theme'),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
            )),
        const ListTile(
            leading: Icon(
              Icons.podcasts_rounded,
              color: Colors.red,
            ),
            title: Text('Productivity'),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
            )),
      ]).toList(),
    );
  }
}

class CustomHelpListCard extends StatelessWidget {
  const CustomHelpListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: const SizedBox(
        width: 400,
        height: 220,
        child: CustomHelpList(),
      ),
    );
  }
}

class CustomHelpList extends StatelessWidget {
  const CustomHelpList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(context: context, tiles: [
        const ListTile(
            leading: Icon(
              Icons.help_outline_outlined,
              color: Colors.red,
            ),
            title: Text('Help & Feedback'),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
            )),
        const ListTile(
            leading: Icon(
              Icons.info_outline_rounded,
              color: Colors.red,
            ),
            title: Text('About'),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
            )),
        const ListTile(
            leading: Icon(
              Icons.lightbulb_outline_sharp,
              color: Colors.red,
            ),
            title: Text("What's New"),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
            )),
        const ListTile(
            leading: Icon(
              Icons.sync_outlined,
              color: Colors.red,
            ),
            title: Text('Sync'),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
            )),
      ]).toList(),
    );
  }
}
