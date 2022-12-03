import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/color_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class EventAboutWidget extends StatelessWidget with PaddingConstants {
  final String description;
  EventAboutWidget({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: defaultTopPadding,
          child: Text(AppConstants.eventAboutTitle, style: Theme.of(context).textTheme.headline6),
        ),
        Padding(
          padding: defaultVerticalPadding * 2,
          child: Text(
            description,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero + defaultBottomPadding * 2,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            AppConstants.eventSeeMoreBtnText,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(color: ColorConstants.textButtonColor),
          ),
        ),
      ],
    );
  }
}
