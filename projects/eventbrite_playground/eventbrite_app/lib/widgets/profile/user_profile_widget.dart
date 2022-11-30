import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/provider/navbar_notifier.dart';
import 'package:eventbrite_app/core/init/provider/user_notifier.dart';
import 'package:eventbrite_app/core/model/user/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../custom_elevated_button.dart';
import 'profile_header_widget.dart';
import 'profile_menu_widget.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> with PaddingConstants {
  late User? _model;
  @override
  void initState() {
    super.initState();
    _model = readUserNotifier.model;
  }

  UserNotifier get readUserNotifier => context.read<UserNotifier>();
  NavbarNotifier get readNavbarNotifier => context.read<NavbarNotifier>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileHeader(stats: AppConstants.profileStats, user: _model),
                  ProfileMenu(headers: AppConstants.profileMenuHeaders),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: defaultPadding,
            child: CustomElevatedButton(
              text: AppConstants.profileLogoutButtonText,
              onPressed: () async {
                await readUserNotifier.logout().then((value) => readNavbarNotifier.updateIndex(0));
              },
              color: Theme.of(context).backgroundColor,
              border: true,
              textStyle: Theme.of(context).textTheme.caption ?? const TextStyle(),
            ),
          )
        ],
      ),
    );
  }
}
