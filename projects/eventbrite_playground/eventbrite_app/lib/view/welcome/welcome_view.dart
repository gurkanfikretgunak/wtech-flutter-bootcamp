import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/init/provider/theme_notifier.dart';
import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) => {FlutterNativeSplash.remove()});
  }

  @override
  Widget build(BuildContext context) {
    final ThemeNotifier provider = Provider.of<ThemeNotifier>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: BottomNavigationItem.home.index,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConstants.welcomeTitle,
              style: Theme.of(context).textTheme.headline1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                AppConstants.welcomeSubtitle,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
              height: size.height * 0.4,
              child: Image.asset(AppConstants.welcomeImagePath),
            ),
            const Spacer(),
            CustomElevatedButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                provider.changeTheme();
              },
              text: AppConstants.welcomeElevatedButtonText,
              textStyle: Theme.of(context).textTheme.button ?? const TextStyle(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(AppConstants.welcomeIcon),
                  TextButton(
                    onPressed: () {},
                    child: const Text(AppConstants.welcomeTextButton),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
