import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/constants/constants.dart';
import 'package:furniture_shopping_app/widgets/button/custom_button_elevated.dart';
import 'package:furniture_shopping_app/widgets/button/custom_text_button.dart';
import 'package:furniture_shopping_app/widgets/custom_card.dart';
import 'package:furniture_shopping_app/widgets/custom_scaffold.dart';
import 'package:furniture_shopping_app/widgets/text/custom_auto_size_text.dart';
import 'package:furniture_shopping_app/widgets/text/text_field_form.dart';
import 'package:kartal/kartal.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    ConstantsClass constants = ConstantsClass.instance;
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage("assets/logo.png"),
              ),
              const CustomText(
                text: "Hello !",
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
              context.emptySizedHeightBoxLow,
              context.emptySizedHeightBoxLow,
              CustomText(
                text: "WELCOME BACK ",
                fontSize: 30,
                color: constants.appBlack,
                fontWeight: FontWeight.w400,
              ),
              context.emptySizedHeightBoxNormal,
              _buildFormsCard(constants, context)
            ],
          ),
        ),
      ),
    );
  }

  CustomCard _buildFormsCard(ConstantsClass constants, BuildContext context) {
    return CustomCard(
      shadowColor: constants.appGrey,
      elevation: 5,
      child: Padding(
        padding: context.paddingMedium,
        child: Column(
          children: [
            const CustomTextFormField(
              labelText: "Email",
            ),
            const CustomTextFormField(
              suffixIcon: Icons.remove_red_eye_outlined,
              labelText: "Password",
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomTextButton(
                padding: EdgeInsets.zero,
                shadowColor: Colors.pink,
                text: "Forgot Password",
                onPressed: () {},
              ),
            ),
            CustomElevatedButton(
              onPressed: () {},
              text: "Log in",
            ),
            CustomTextButton(
              fontSize: 18,
              text: "Sign Up",
              fontWeight: FontWeight.w600,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
