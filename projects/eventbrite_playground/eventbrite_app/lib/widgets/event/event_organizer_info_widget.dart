import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/color_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:flutter/material.dart';

class EventOrganizerInfoWidget extends StatelessWidget with PaddingConstants {
  final Event event;
  EventOrganizerInfoWidget({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: defaultVerticalPadding + defaultTopPadding,
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(event.organizationImage ?? ''),
          ),
        ),
        Text(event.organization ?? '', style: Theme.of(context).textTheme.headline6),
        Padding(
          padding: defaultVerticalPadding,
          child: Text(AppConstants.eventOrganizerTitle, style: Theme.of(context).textTheme.headline5),
        ),
        Text(event.desc ?? '', style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey)),
        Padding(
          padding: defaultBottomPadding * 2,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                side: const BorderSide(
              color: ColorConstants.textButtonColor,
            )),
            child: Text(
              AppConstants.organizerFollowButtonText,
              style: Theme.of(context).textTheme.button!.copyWith(color: ColorConstants.textButtonColor),
            ),
          ),
        ),
      ],
    );
  }
}
