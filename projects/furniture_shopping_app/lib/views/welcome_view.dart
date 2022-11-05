import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/extension/context_extension.dart';
import 'package:furniture_shopping_app/widgets/button_elevated.dart';
import 'package:furniture_shopping_app/widgets/custom_scaffold.dart';
import 'package:furniture_shopping_app/widgets/text.dart';

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
                  color: Color(0xFF606060),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Expanded(
                  child: CustomText(
                text: "HOME BEAUTIFUL",
                color: Color(0xFF303030),
                fontSize: 30,
                fontWeight: FontWeight.w700,
              )),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: context.paddingMedium,
                  child: const CustomText(
                    text:
                        "The best simple place where you discover most wonderful furnitures and make your home beautiful",
                    color: Color(0xFF808080),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Spacer(flex: 4),
              CustomElevatedButton(
                onPressed: () {},
                text: "Get Started",
              )
            ],
          ),
        ),
      ),
    );
  }
}
