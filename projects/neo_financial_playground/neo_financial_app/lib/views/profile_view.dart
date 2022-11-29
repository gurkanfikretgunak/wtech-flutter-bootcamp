import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/local/shared_preferences.dart';
import '../widgets/custom_appbar_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size dynamicSize = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: CustomAppbarWidget(
            titleWidget: const Text(
              'Profile',
              style: TextStyle(color: Colors.black),
            ),
            preferredSizeHeight: dynamicSize.height / 15,
            leftWidget: const Icon(
              Icons.close,
              color: Colors.black,
            ),
            rightWidgetList: null,
          ),
          body: Center(
              child: ElevatedButton(
            onPressed: () {
              UserSharedPreferences.setUserID('');
              Navigator.pushNamed(
                context,
                '/Onboarding',
              );
            },
            child: const Text('Sign out'),
          )),
        ));
  }
}
