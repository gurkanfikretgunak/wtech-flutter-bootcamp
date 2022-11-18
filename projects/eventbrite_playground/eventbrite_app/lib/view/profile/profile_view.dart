import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../core/constants/navigation/navigation_constants.dart';
import '../../core/init/navigation/navigation_service.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> headers = ['Ticket Issues', 'Manage Events', 'Settings'];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: headers.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(headers[index], style: Theme.of(context).textTheme.headline2),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    Padding(
                      padding: PaddingConstants.defaultHorizontalPadding * 2,
                      child: const Divider(
                        thickness: 1,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          const Spacer(),
          const Divider(),
          Padding(
            padding: PaddingConstants.defaultPadding * 2,
            child: CustomElevatedButton(
              text: 'Log In',
              onPressed: () {
                NavigationService.instance.navigateToPage(routeName: NavigationConstants.getStartedPage);
              },
              color: Theme.of(context).primaryColor,
              textStyle: Theme.of(context).textTheme.button ?? const TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
