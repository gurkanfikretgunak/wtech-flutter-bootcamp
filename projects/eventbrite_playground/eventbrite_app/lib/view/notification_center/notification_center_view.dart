import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class NotificationCenterView extends StatelessWidget with PaddingConstants {
  NotificationCenterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        debugPrint(innerBoxIsScrolled.toString());
        return [
          SliverAppBar(
            pinned: true,
            elevation: 3,
            expandedHeight: 120,
            actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings))],
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: defaultPadding,
              centerTitle: true,
              expandedTitleScale: 1.1,
              title: Text(
                'Notification Center',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
        ];
      },
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: defaultPadding * 4,
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
                Icons.notifications_outlined,
              ),
            ),
            Padding(
              padding: defaultVerticalPadding * 2,
              child: Text(
                'No notifications yet',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
