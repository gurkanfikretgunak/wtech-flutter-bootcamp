// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/core/provider/service_provider.dart';
import 'package:todoist_app/views/settings/settings_app.dart';
import '../../constants/text/settings_page_custom.dart';
import '../../core/provider/user_profile_provider.dart';
import '../../widgets/preferred_app_bar_widgets.dart';

class AccountSettingView extends StatefulWidget {
  const AccountSettingView({Key? key}) : super(key: key);

  @override
  State<AccountSettingView> createState() => _AccountSettingViewState();
}

class _AccountSettingViewState extends State<AccountSettingView> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    ServiceProvider _serviceProvider = Provider.of<ServiceProvider>(context);

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: const PreferredSize(
            preferredSize: Size(400, 50),
            child: AppBarWidget(
              appText: CustomSettingsText.accountText,
            )),
        body: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 20, end: 20, top: 8),
                child: Column(children: [
                  Column(children: [const _UserImageWidget(), TextButton(onPressed: () {}, child: const Text("edit"))]),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                    child: Column(
                      children: [
                        SizedBox(
                            width: 340,
                            child: Text(CustomSettingsText.fullNameText,
                                style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14))),
                        CustomAccountCard(redButton: _serviceProvider.userName)
                      ],
                    ),
                  ),
                  Column(children: [
                    SizedBox(
                        width: 340,
                        child: Text(CustomSettingsText.emailText,
                            style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14))),
                    CustomAccountCard(redButton: _serviceProvider.userEmail)
                  ]),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 23, top: 10),
                      child: Column(children: [
                        SizedBox(
                            width: 340,
                            child: Text(CustomSettingsText.passwordText,
                                style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14))),
                        const CustomAccountCard(redButton: CustomSettingsText.changePassText)
                      ])),
                  const CustomLogOutCard(redText: CustomSettingsText.deleteAccountText)
                ]))));
  }
}

class _UserImageWidget extends StatelessWidget {
  const _UserImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90.0,
        height: 90.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(color: Colors.green.shade800, width: 4.0)),
        child: Center(
            child: Text("NP",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 40, color: Colors.green[800]))));
  }
}

class CustomAccountCard extends StatelessWidget {
  const CustomAccountCard({
    Key? key,
    required this.redButton,
  }) : super(key: key);
  final String redButton;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
        child: SizedBox(
            width: 400,
            height: 50,
            child: Padding(
                padding: const EdgeInsets.only(top: 13.0, left: 15.0),
                child: Consumer<UserProfilePrefProvider>(builder: (context, value, child) {
                  return Text(redButton,
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal));
                }))));
  }
}
