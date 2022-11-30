import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/navigation/navigation_service.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../core/constants/navigation/navigation_constants.dart';

class GuestProfile extends StatelessWidget with PaddingConstants {
  GuestProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: AppConstants.guestProfileMenuHeaders.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title:
                        Text(AppConstants.guestProfileMenuHeaders[index], style: Theme.of(context).textTheme.headline2),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  Padding(
                    padding: defaultHorizontalPadding * 2,
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
          padding: defaultPadding * 2,
          child: CustomElevatedButton(
            text: AppConstants.guestProfileLoginButtonText,
            onPressed: () {
              NavigationService.instance.navigateToPage(routeName: NavigationConstants.getStartedPage);
            },
            color: Theme.of(context).primaryColor,
            textStyle: Theme.of(context).textTheme.button ?? const TextStyle(),
          ),
        ),
      ],
    );
  }
}
