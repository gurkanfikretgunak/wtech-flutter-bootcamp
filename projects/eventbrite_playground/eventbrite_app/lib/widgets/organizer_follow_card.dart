import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/color_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class OrganizerFollowCard extends StatelessWidget with PaddingConstants {
  OrganizerFollowCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultRightPadding,
      child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Theme.of(context).primaryColorLight),
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10,
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
                Text(
                  AppConstants.organizerFollowCardTitle,
                  style: Theme.of(context).textTheme.headline6,
                ),
                OutlinedButton(
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
              ],
            ),
          )),
    );
  }
}
