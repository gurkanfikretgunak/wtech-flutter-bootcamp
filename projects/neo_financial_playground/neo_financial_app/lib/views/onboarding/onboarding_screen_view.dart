import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/onboarding/onboarding_nested_scroll_view_widget.dart';

class OnbordingScreenView extends StatefulWidget {
  const OnbordingScreenView({super.key});

  @override
  State<OnbordingScreenView> createState() => _OnbordingScreenViewState();
}

class _OnbordingScreenViewState extends State<OnbordingScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              flex: 4,
              //TODO: Can use TabBar in here
              child: OnboardingNestedScrollViewWidget(
                imgUrl: 'assets/images/onboarding-background1.jpg',
                headlineText: 'High cashback Mastercard® ',
                bodyText:
                    'Earn an average of 4% to 6%* cashback at thousand of local and national partners. ⓘ',
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Create a profile'),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                ),
                              )
                            ]),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/Register',
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already with Neo?'),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign in',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
