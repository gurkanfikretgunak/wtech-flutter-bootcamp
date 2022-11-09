import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/constants/constants.dart';
import 'package:furniture_shopping_app/views/authentication/sign_in_view.dart';
import 'package:furniture_shopping_app/widgets/button/custom_button_elevated.dart';
import 'package:furniture_shopping_app/widgets/custom_scaffold.dart';
import 'package:furniture_shopping_app/widgets/text/custom_auto_size_text.dart';
import 'package:kartal/kartal.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(
        width: context.dynamicWidth(1),
        height: context.dynamicHeight(1),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/welcome_screen_background.png"),
          ),
        ),
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 4),
              const Expanded(
                child: CustomText(
                  text: "MAKE YOUR",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: CustomText(
                  text: "HOME BEAUTIFUL",
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: ConstantsClass.instance.appBlack,
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: context.paddingLow,
                  child: const CustomText(
                    text:
                        "The best simple place where you discover\n most wonderful furnitures and make your home beautiful",
                    maxLines: 4,
                    fontSize: 18,
                    height: 2.1,
                  ),
                ),
              ),
              const Spacer(flex: 4),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInView(),
                    ),
                  );
                },
                text: "Get Started",
              )
            ],
          ),
        ),
      ),
    );
  }
}
