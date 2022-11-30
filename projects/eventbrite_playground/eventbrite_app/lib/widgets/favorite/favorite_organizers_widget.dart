import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

import '../who_to_follow_widget.dart';

class FavoriteOrganizersWidget extends StatelessWidget with PaddingConstants {
  FavoriteOrganizersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: defaultPadding * 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppConstants.userFavoriteOrganizersTitle, style: Theme.of(context).textTheme.headline6),
                Padding(
                  padding: defaultVerticalPadding + defaultBottomPadding * 4,
                  child:
                      Text(AppConstants.userFavoriteOrganizersSubtitle, style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            ),
          ),
          WhoToFollowWidget(),
        ],
      ),
    );
  }
}
