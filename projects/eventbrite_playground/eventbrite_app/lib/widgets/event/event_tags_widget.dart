import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/color_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class EventTagsWidget extends StatelessWidget with PaddingConstants {
  final List tags;

  EventTagsWidget({Key? key, required this.tags}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultVerticalPadding * 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: defaultVerticalPadding,
            child: Text(AppConstants.eventTagsTitle, style: Theme.of(context).textTheme.headline6),
          ),
          SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: defaultRightPadding,
                    child: Chip(
                      shape: StadiumBorder(
                        side: BorderSide(color: Theme.of(context).dividerColor),
                      ),
                      label: Text(
                        '#${tags[index]}',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(color: ColorConstants.textButtonColor),
                      ),
                      padding: defaultHorizontalPadding,
                      backgroundColor: Theme.of(context).primaryColorDark,
                    ),
                  );
                },
                itemCount: tags.length,
              ))
        ],
      ),
    );
  }
}
