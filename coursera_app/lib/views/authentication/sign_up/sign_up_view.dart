import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

import '../../../core/components/button/button_libary.dart';
import '../../../core/components/custom_app_bar.dart';
import '../../../core/components/custom_or_text.dart';
import '../../../core/components/text/text_libary.dart';
import '../../../core/data/model/user.dart';
import '../../../core/data/network/services/user_service.dart';
import '../../../core/init/routes/custom_navigator.dart';
import '../authentication_custom_widget/authentication_form.dart';
import '../authentication_view.dart';
import 'sign_up_text_form_field_model.dart';
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
          WidgetsBinding.instance.window.viewInsets.bottom > 0.0
              ? context.emptySizedHeightBoxLow3x
              : const Expanded(
                  flex: 2,
                  child: Center(
                    child: CustomText(
                      text: "Create an Account",
                      fontSize: 18,
                    ),
                  ),
                ),
          Expanded(
            flex:
                WidgetsBinding.instance.window.viewInsets.bottom > 0.0 ? 30 : 5,
            child: AuthenticationFormWidget(
              buttonOnPressed: signUpButtonOnPressed,
              formKey: formKey,
              modelList:
                  SignUpTextFormFiledModel().buildTextFormFieldValue(context),
            ),
          ),
          context.emptySizedHeightBoxLow,
          WidgetsBinding.instance.window.viewInsets.bottom > 0.0
              ? const SizedBox()
              : const Expanded(child: CustomOrText()),
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

  void signUpButtonOnPressed() {
    var provider = SignUpViewModel().of(context, listen: false);

    if (provider.nameController.text.isNotEmpty &&
        provider.emailController.text.isNotEmpty &&
        provider.passwordController.text.isNotEmpty) {
      User user = User(
        name: provider.nameController.text,
        email: provider.emailController.text,
        password: provider.passwordController.text,
        birthYear: "",
        country: "",
        profileImage: "",
        surname: "",
        userCourse: [],
      );
      UserService().createEntity(user);
      CustomNavigator.goToScreen(context, "/SignInWithEmail");
      logger.i(user);
    }
  }
}
