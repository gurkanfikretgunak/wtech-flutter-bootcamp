import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/notFollowingWidget.dart';
import '../core/themes/custom_theme.dart';
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
      appBar: AppBar(
        elevation: 1,
        leadingWidth: 50,
        centerTitle: true,
        title: Text(
          "Feed",
          style: CustomTheme.customThemeData().textTheme.labelMedium,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                customShowBottom(context);
              },
              child: CircleAvatar(radius: 10, child: Image.network(""))),
        ),
      ),
      //body: const LoadingWidget(),
      body: const NotFollowingWidget(),
    );
  }
}
