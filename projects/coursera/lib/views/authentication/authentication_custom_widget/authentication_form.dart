import '../sign_up/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/constant_libary.dart';
import '../../../core/init/routes/custom_navigator.dart';
import '../../../core/components/button/button_libary.dart';
import '../../../core/components/text/text_libary.dart';
import '../sign_in/sign_in_with_email/sign_in_with_email_view_model.dart';

class RepetitiveWidget extends StatefulWidget {
  const RepetitiveWidget({
    super.key,
    required this.modelList,
    required this.formKey,
    this.isLogin,
    this.forgotPasswordButton,
  });
  final List modelList;
  final dynamic formKey;
  final bool? isLogin;
  final Widget? forgotPasswordButton;

  @override
  State<RepetitiveWidget> createState() => _RepetitiveWidgetState();
}

class _RepetitiveWidgetState extends State<RepetitiveWidget> {
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
                : ColorConstant.instance.appGreyLight,
            onPressed: isActiveButtonControl(context) ? buttonOnPressed : null,
            text: widget.isLogin == null ? 'Create an Account' : 'Login',
          ),
        ),
      ],
    );
  }

  VoidCallback? buttonOnPressed() {
    if (widget.formKey.currentState.validate()) {
      CustomNavigator.goToScreen(context, "/HomeView");
    }
    return null;
  }

  bool isActiveButtonControl(BuildContext context) {
    return widget.isLogin == null
        ? (context.watch<SignUpViewModel>().isFormValidateName &&
            context.watch<SignUpViewModel>().isFormValidateEmail &&
            context.watch<SignUpViewModel>().isFormValidatePassword)
        : (context.watch<SignInWithEmailViewModel>().isFormValidateEmail &&
                context
                    .watch<SignInWithEmailViewModel>()
                    .isFormValidatePassword)
            ? true
            : false;
  }
}
