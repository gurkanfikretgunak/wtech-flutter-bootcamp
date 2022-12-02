import 'package:flutter/material.dart';

import 'custom_elevated_button_widget.dart';

class TabBarViewChildWidget extends StatelessWidget {
  final String headlineText, bodyText;
  final int pageIndex;
  const TabBarViewChildWidget({
    Key? key,
    required this.headlineText,
    required this.bodyText,
    required this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return SingleChildScrollView(
          child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraint.maxHeight),
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(headlineText,
                    style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(
                  height: 20,
                ),
                Text(bodyText, style: Theme.of(context).textTheme.bodyMedium),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Center(
                    child: Column(
                      children: [
                        const Icon(
                          Icons.keyboard_arrow_up,
                          size: 30,
                        ),
                        OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/OnboardingBuilder',
                              );
                            },
                            child: const Text('Learn more')),
                      ],
                    ),
                  ),
                ),
                CustomElevatedButtonWidget(
                  btnName: 'Create a profile',
                  btnIcon: Icons.arrow_forward,
                  function: () {
                    Navigator.pushNamed(
                      context,
                      '/Register',
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already with Neo?'),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/SignIn',
                            );
                          },
                          child: const Text(
                            'Sign in',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    });
  }
}
