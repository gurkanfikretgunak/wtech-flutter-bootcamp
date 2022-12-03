import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:flutter/material.dart';

class EventLocationWidget extends StatelessWidget with PaddingConstants {
  final Event event;
  EventLocationWidget({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: defaultTopPadding,
          child: Text(AppConstants.eventLocationTitle, style: Theme.of(context).textTheme.headline6),
        ),
        Padding(
          padding: defaultVerticalPadding * 2,
          child: Text(
            event.location ?? '',
            style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),
          ),
        ),
        Padding(
          padding: defaultBottomPadding * 2,
          child: Image.asset(
            AppConstants.eventLocationImgPath,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
