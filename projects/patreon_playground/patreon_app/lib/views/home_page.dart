import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/customAppBar.dart';
import 'package:patreon_app/widgets/notFollowingWidget.dart';

import '../widgets/customShowBottom.dart';
import '../widgets/loadingWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Feed",
        w: MediaQuery.of(context).size.width/3,
        widget: InkWell(
            onTap: () {
              customShowBottom(context);
            },
            child: CircleAvatar(child: Image.network(""))),
      ),
      //body: const LoadingWidget(),
      body: const NotFollowingWidget(),
    );
  }
}
