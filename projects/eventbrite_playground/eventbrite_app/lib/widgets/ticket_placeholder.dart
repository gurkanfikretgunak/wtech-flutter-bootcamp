import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class TicketPlaceholder extends StatelessWidget {
  const TicketPlaceholder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: PaddingConstants.defaultPadding * 4,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border.all(
              width: 3,
              color: Theme.of(context).primaryColorLight,
            ),
            shape: BoxShape.circle,
          ),
          child: Icon(
            color: Theme.of(context).primaryColorLight,
            size: 40,
            Icons.confirmation_number_outlined,
          ),
        ),
        Padding(
          padding: PaddingConstants.defaultVerticalPadding * 2,
          child: Text(
            'Not seeing your tickets? Learn\n more about how to find them.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Find my tickets',
              style: Theme.of(context).textTheme.button!.copyWith(color: Colors.indigo),
            ))
      ],
    );
  }
}
