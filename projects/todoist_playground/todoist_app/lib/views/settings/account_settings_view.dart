// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/core/provider/service_provider.dart';
import 'package:todoist_app/views/settings/change_password_view.dart';
import 'package:todoist_app/views/settings/settings_app.dart';
import '../../constants/text/settings_page_custom.dart';
import '../../core/provider/user_profile_provider.dart';
import '../../widgets/custom_methods.dart';
import '../../widgets/preferred_app_bar_widgets.dart';

class AccountSettingView extends StatefulWidget {
  const AccountSettingView({Key? key}) : super(key: key);

  @override
  State<AccountSettingView> createState() => _AccountSettingViewState();
}

class _AccountSettingViewState extends State<AccountSettingView> {
  File? _image;

  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);
      setState(() {
        _image = img;
      });
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print(e);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    ServiceProvider _serviceProvider = Provider.of<ServiceProvider>(context);
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size(400, 50),
            child: AppBarWidget(
              appText: CustomSettingsText.accountText,
              pickImage: _image,
            )),
        body: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 20, end: 20, top: 8),
                child: Column(children: [
                  Column(children: [
                    _UserImageWidget(image: _image),
                    TextButton(
                        onPressed: () {
                          _pickImage(ImageSource.gallery);
                        },
                        child: const Text("edit"))
                  ]),
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
                        const CustomAccCard(redButton: CustomSettingsText.changePassText)
                      ])),
                  const CustomLogOutCard(redText: CustomSettingsText.deleteAccountText)
                ]))));
  }
}

class _UserImageWidget extends StatelessWidget {
  const _UserImageWidget({
    Key? key,
    this.image,
  }) : super(key: key);
  final File? image;

  @override
  Widget build(BuildContext context) {
    File? imageAp;
    // ignore: no_leading_underscores_for_local_identifiers
    ServiceProvider _serviceProvider = Provider.of<ServiceProvider>(context);
    imageAp = File(
        context.read<ServiceProvider>().imageUser.substring(1, context.read<ServiceProvider>().imageUser.length - 1));

    return Container(
        width: 90.0,
        height: 90.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(color: Colors.red, width: 4.0)),
        child: Center(
            child: image == null
                ? const Icon(Icons.camera_alt_outlined)
                : CircleAvatar(
                    radius: 90,
                    backgroundImage: FileImage(image!),
                  )));
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

class CustomAccCard extends StatelessWidget {
  const CustomAccCard({
    Key? key,
    required this.redButton,
  }) : super(key: key);
  final String redButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CustomMethods.settingModalBottomSheet(context, const ChangePasswordView());
      },
      child: Card(
          elevation: 0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
          child: SizedBox(
              width: 400,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0, left: 15.0),
                child: Text(redButton,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
              ))),
    );
  }
}
