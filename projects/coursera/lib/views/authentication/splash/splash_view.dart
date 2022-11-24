import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../core/constants/constant_libary.dart';
import '../../../core/components/custom_logo.dart';
import '../../../core/components/custom_scaffold.dart';
import '../../../core/data/enum/shared_prefence_keys.dart';
import '../../../core/init/cache/shared_manager.dart';
import '../../../core/init/routes/custom_navigator.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () => StorageUtil.getBool(SharedKeys.isLogin.toString())
          ? CustomNavigator.goToScreen(context, "/HomeView")
          : CustomNavigator.goToScreen(context, "/SignInView"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: ColorConstant.instance.appBlue,
      body: Logo(
        color: ColorConstant.instance.appWhite,
      ),
    );
  }
}
