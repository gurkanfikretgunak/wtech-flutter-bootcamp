import 'package:coursera/views/authentication/sign_up/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/constant_libary.dart';
import '../../../core/provider/sign_up_state.dart';
import '../../../widgets/button/button_libary.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_or_text.dart';
import '../../../widgets/text/text_libary.dart';
import '../authentication_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();

  bool isFormValidate = false;

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
            flex: 4,
            child: Form(
              key: formKey,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
                itemCount:
                    SignUpViewModel.buildTextFormFieldValue(context).length,
                itemBuilder: (context, index) {
                  var listItem =
                      SignUpViewModel.buildTextFormFieldValue(context)[index];
                  return CustomTextFormField(
                    controller: listItem['controller'],
                    hintText: listItem['hintText'],
                    onChanged: listItem['onChanged'],
                    suffixIcon: listItem['suffixIcon'],
                    validator: listItem['validator'],
                    obscureText: listItem['obscureText'],
                    hintTextColor: listItem['hintTextColor'],
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              primary: isActiveButtonControl()
                  ? ColorConstant.instance.appBlue
                  : ColorConstant.instance.appGreyLight,
              onPressed: isActiveButtonControl()
                  ? () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    }
                  : null,
              text: 'Create an Account',
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

  bool isActiveButtonControl() {
    return (context.watch<SignUpState>().isFormValidateName &&
            context.watch<SignUpState>().isFormValidateEmail &&
            context.watch<SignUpState>().isFormValidatePassword)
        ? true
        : false;
  }
}
