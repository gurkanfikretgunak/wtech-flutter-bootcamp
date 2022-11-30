import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class FavoriteEventsWidget extends StatelessWidget with PaddingConstants {
  FavoriteEventsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding * 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppConstants.userFavoriteEventsTitle, style: Theme.of(context).textTheme.headline6),
          Padding(
            padding: defaultVerticalPadding + defaultBottomPadding * 4,
            child: Text(AppConstants.userFavoriteEventsSubtitle, style: Theme.of(context).textTheme.bodyText1),
          ),
          Text(AppConstants.userFavoriteEventsTitle2, style: Theme.of(context).textTheme.headline6),
          Padding(
            padding: defaultVerticalPadding * 2,
            child: buildCategories(AppConstants.userEventCategories, context),
          ),
        ],
      ),
    );
  }

  Widget buildCategories(List<Map<String, String>> eventCategories, context) {
    return Wrap(
      spacing: 30,
      runSpacing: 10,
      children: eventCategories
          .map(
            (e) => Chip(
              padding: defaultHorizontalPadding,
              label: Text(e['name'] ?? ''),
              backgroundColor: Theme.of(context).primaryColorDark,
              labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey),
            ),
          )
          .toList(),
    );
  }
}
