import 'package:flutter/material.dart';
import 'package:todoist_app/views/settings/settings_app.dart';

class AccountSettingView extends StatefulWidget {
  const AccountSettingView({Key? key}) : super(key: key);

  @override
  State<AccountSettingView> createState() => _AccountSettingViewState();
}

class _AccountSettingViewState extends State<AccountSettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Account", style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 19)),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child:
                  Text("Done", style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 17, color: Colors.red)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20,
            end: 20,
            top: 8,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.green.shade800,
                        width: 4.0,
                      ),
                    ),
                    child: Center(
                        child: Text("NP",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(fontSize: 40, color: Colors.green[800]))),
                  ),
                  TextButton(onPressed: () {}, child: const Text("edit"))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 340,
                      child: Text("FULL NAME", style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14)),
                    ),
                    const CustomAccountCard(
                      iconText: "Nur Perker",
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                      width: 340,
                      child: Text("EMAIL", style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14))),
                  const CustomAccountCard(iconText: "nur@gmail.com"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 23, top: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 340,
                      child: Text("PASSWORD", style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14)),
                    ),
                    const CustomAccountCard(iconText: "Change Password"),
                  ],
                ),
              ),
              const CustomLogOutCard(redText: "Delete Account"),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAccountCard extends StatelessWidget {
  const CustomAccountCard({
    Key? key,
    required this.iconText,
  }) : super(key: key);
  final String iconText;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        width: 400,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(top: 13.0, left: 15.0),
          child: Text(
            iconText,
            style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 16, fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
