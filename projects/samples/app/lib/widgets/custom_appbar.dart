import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final double appBarHeight;
  const CustomAppBar({super.key, this.appBarHeight = kToolbarHeight});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    String hourAndMinute = '${now.hour}:${now.minute}';
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(33),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text('Günaydın, Melih!', style: Theme.of(context).textTheme.headline2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(hourAndMinute, style: Theme.of(context).textTheme.headline1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text('2 Kasım, Çarşamba', style: Theme.of(context).textTheme.headline2),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
