import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

import '../../../core/components/button/button_libary.dart';
import '../../../core/components/text/text_libary.dart';
import '../../../core/constants/constant_libary.dart';
import '../sign_in/sign_in_with_email/sign_in_with_email_view_model.dart';
import '../sign_up/sign_up_view_model.dart';

class AuthenticationFormWidget extends StatefulWidget {
  const AuthenticationFormWidget({
    super.key,
    required this.modelList,
    required this.formKey,
    this.isLogin,
    this.forgotPasswordButton,
    required this.buttonOnPressed,
  });
  final List modelList;
  final dynamic formKey;
  final bool? isLogin;
  final Widget? forgotPasswordButton;
  final VoidCallback buttonOnPressed;
  @override
  State<AuthenticationFormWidget> createState() =>
      _AuthenticationFormWidgetState();
}

class _AuthenticationFormWidgetState extends State<AuthenticationFormWidget> {
  Logger logger = Logger();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: widget.formKey,
          child: Expanded(
            flex: widget.isLogin == null ? 4 : 3,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              itemCount: widget.modelList.length,
              itemBuilder: (context, index) {
                var listItem = widget.modelList[index];
                return CustomTextFormField(
                  controller: listItem['controller'],
                  keyboardType: listItem['keyboardType'],
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
        widget.isLogin == null
            ? const SizedBox()
            : widget.forgotPasswordButton ?? const SizedBox(),
        Flexible(
          child: CustomElevatedButton(
            primary: isActiveButtonControl(context)
                ? ColorConstant.instance.appBlue
                : ColorConstant.instance.appGrey1,
            onPressed: isActiveButtonControl(
              context,
            )
                ? buttonOnPressed
                : null,
            text: widget.isLogin == null ? 'Create an Account' : 'Login',
          ),
        ),
      ],
    );
  }

  VoidCallback? buttonOnPressed() {
    if (widget.formKey.currentState.validate()) {
      widget.buttonOnPressed();
    }
    return null;
  }

  bool isActiveButtonControl(BuildContext context) {
    var providerSignUp = SignUpViewModel().of(context);
    var providerSignIn = SignInWithEmailViewModel().of(context);

    return widget.isLogin == null
        ? (providerSignUp.isFormValidateName &&
            providerSignUp.isFormValidateEmail &&
            providerSignUp.isFormValidatePassword)
        : (providerSignIn.isFormValidateEmail &&
                providerSignIn.isFormValidatePassword)
            ? true
            : false;
  }
}
