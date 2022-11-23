import 'package:coursera/core/data/network/services/user_service.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

import '../../../core/data/model/user.dart';
import '../../../core/init/routes/custom_navigator.dart';
import '../authentication_custom_widget/authentication_form.dart';
import 'sign_up_text_form_field_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/components/button/button_libary.dart';
import '../../../core/components/custom_app_bar.dart';
import '../../../core/components/custom_or_text.dart';
import '../../../core/components/text/text_libary.dart';
import '../authentication_view.dart';
import 'sign_up_view_model.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();
  Logger logger = Logger();

  @override
  Widget build(BuildContext context) {
    return AuthenticationView(
      appBar: CustomAppBar.customAppBar(context: context),
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            flex: 2,
            child: Center(
              child: CustomText(
                text: "Create an Account",
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: AuthenticationFormWidget(
              buttonOnPressed: signUpButtonOnPressed,
              formKey: formKey,
              modelList:
                  SignUpTextFormFiledModel().buildTextFormFieldValue(context),
            ),
          ),
          context.emptySizedHeightBoxLow,
          const Expanded(
            child: CustomOrText(),
          ),
          Expanded(
            child: CustomTextButton(
              onPressed: () {},
              text: "Sign up with your organization",
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

//ViewModel sayfasına taşıdığımda hatalar alıyorum. Sonra bak
  void signUpButtonOnPressed() {
    if (context.read<SignUpViewModel>().nameController.text.isNotEmpty &&
        context.read<SignUpViewModel>().emailController.text.isNotEmpty &&
        context.read<SignUpViewModel>().passwordController.text.isNotEmpty) {
      User user = User(
          name: context.read<SignUpViewModel>().nameController.text,
          email: context.read<SignUpViewModel>().emailController.text,
          password: context.read<SignUpViewModel>().passwordController.text);
      UserService().createEntity(user);
      CustomNavigator.goToScreen(context, "/SignInWithEmail");
      logger.i(user);
    }
  }
}
