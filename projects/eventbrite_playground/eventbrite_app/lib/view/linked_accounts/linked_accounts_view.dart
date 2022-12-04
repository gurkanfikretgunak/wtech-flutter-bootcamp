import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/provider/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LinkedAccountsView extends StatelessWidget with PaddingConstants {
  LinkedAccountsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserNotifier>().model;
    return user != null
        ? Scaffold(
            appBar: AppBar(
              title: Text('Linked Accounts', style: Theme.of(context).textTheme.headline3),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${user.name} ${user.surname}", style: Theme.of(context).textTheme.headline1),
                  Padding(
                    padding: defaultVerticalPadding * 2,
                    child: Text(user.email ?? '', style: Theme.of(context).textTheme.subtitle1),
                  ),
                  ListTile(
                    leading: const CircleAvatar(backgroundImage: AssetImage(AppConstants.facebookIconPath)),
                    title: Text('Log in with Facebook', style: Theme.of(context).textTheme.headline5),
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  ListTile(
                    leading: const CircleAvatar(backgroundImage: AssetImage(AppConstants.googleIconPath)),
                    title: Text('Log in with Google', style: Theme.of(context).textTheme.headline5),
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          )
        : const SizedBox();
  }
}
