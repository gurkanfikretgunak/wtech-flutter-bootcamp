import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/core/init/navigation/navigation_service.dart';
import 'package:flutter/material.dart';

class SliverDropdown extends StatelessWidget with PaddingConstants {
  final bool isScrolled;
  SliverDropdown({
    Key? key,
    required this.isScrolled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            !isScrolled ? Text(AppConstants.homeTitle, style: Theme.of(context).textTheme.headline5) : const SizedBox(),
            DropdownButton(
              value: 1,
              icon: const Icon(AppConstants.selectEventDropDownButtonIcon),
              style: Theme.of(context).textTheme.headline3,
              items: const [
                DropdownMenuItem(value: 1, child: Text(AppConstants.selectEventDropDownButtonValue)),
                DropdownMenuItem(value: 2, child: Text(AppConstants.selectEventDropDownButtonValue2)),
              ],
              onChanged: (value) {},
            ),
          ],
        ),
        IconButton(
            onPressed: () {
              NavigationService.instance.navigateToPage(routeName: NavigationConstants.notificationCenterPage);
            },
            icon: const Icon(Icons.notifications_outlined))
      ],
    );
  }
}
