//This class is not best practice for splash screen, but it works.
import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/route_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:neo_financial_app/core/data/local/shared_preferences.dart';
import 'package:neo_financial_app/core/provider/user_state.dart';
import 'package:provider/provider.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            direction: Axis.vertical,
            spacing: MediaQuery.of(context).size.height / 6,
            children: [
              Text(TextConstants.splashTitle,
                  style: Theme.of(context).textTheme.displayLarge),
              Image(
                  width: MediaQuery.of(context).size.width.toDouble(),
                  fit: BoxFit.fill,
                  image: const AssetImage(TextConstants.splashImagePath))
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    String? user = UserSharedPreferences.getUserID();
    if (user != "") {
      // ignore: use_build_context_synchronously
      await Provider.of<UserState>(context, listen: false).setUser();
    }
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(
      context,
      user!.isEmpty ? RouteConstants.onboardRoute : RouteConstants.homeRoute,
    );
  }
}

