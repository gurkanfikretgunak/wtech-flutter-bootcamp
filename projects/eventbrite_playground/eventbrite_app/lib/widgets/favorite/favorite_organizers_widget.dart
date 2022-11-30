import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/widgets/organizer_follow_card.dart';
import 'package:flutter/material.dart';

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
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            color: Theme.of(context).primaryColorDark,
            child: Padding(
              padding: defaultPadding * 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppConstants.userFavoriteOrganizersTitle2, style: Theme.of(context).textTheme.headline3),
                  Padding(
                    padding: defaultVerticalPadding + defaultBottomPadding * 4,
                    child: Text(AppConstants.userFavoriteOrganizersSubtitle2,
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return OrganizerFollowCard();
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
