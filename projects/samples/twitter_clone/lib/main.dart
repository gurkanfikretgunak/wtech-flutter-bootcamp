import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeView(),
      theme: ThemeData.light().copyWith(
          appBarTheme:
              AppBarTheme(color: Theme.of(context).scaffoldBackgroundColor),
          tabBarTheme: TabBarTheme(
              labelColor: CupertinoColors.activeBlue,
              unselectedLabelColor: CupertinoColors.inactiveGray)),
    );
  }
}
