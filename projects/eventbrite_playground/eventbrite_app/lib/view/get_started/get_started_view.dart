import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/view/register/register_view.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        AppConstants.getStartedTitle,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    Text(
                      AppConstants.getStartedSubtitle,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: [
                    CustomElevatedButton(
                      text: AppConstants.getStartedElevatedButtonText,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const RegisterView()),
                        );
                      },
                      color: Theme.of(context).primaryColor,
                      textStyle: Theme.of(context).textTheme.button ?? const TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: CustomElevatedButton(
                        text: AppConstants.getStartedFacebookButtonText,
                        onPressed: () {},
                        color: Theme.of(context).backgroundColor,
                        border: true,
                        hasImage: true,
                        imagePath: AppConstants.facebookIconPath,
                        textStyle: Theme.of(context).textTheme.caption ?? const TextStyle(),
                      ),
                    ),
                    CustomElevatedButton(
                      text: AppConstants.getStartedGoogleButtonText,
                      onPressed: () {},
                      color: Theme.of(context).backgroundColor,
                      hasImage: true,
                      imagePath: AppConstants.googleIconPath,
                      border: true,
                      textStyle: Theme.of(context).textTheme.caption ?? const TextStyle(),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(AppConstants.getStartedTextButton),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
