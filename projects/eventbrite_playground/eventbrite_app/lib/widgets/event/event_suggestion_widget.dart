import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

import '../../core/init/utils/helper.dart';
import '../../core/model/event/event.dart';
import 'show_case_event_card.dart';

class EventSuggestionWidget extends StatelessWidget with PaddingConstants {
  final Event? event;

  EventSuggestionWidget({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppConstants.eventSuggestionTitle, style: Theme.of(context).textTheme.headline3),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: defaultRightPadding,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ShowCaseEventCard(
                        event: event!,
                        eventDate: Helper.instance.dateFormatter(event!),
                        onTap: () {},
                      )),
                );
              }),
        ),
      ],
    );
  }
}
