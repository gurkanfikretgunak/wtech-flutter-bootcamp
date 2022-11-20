import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/constant_libary.dart';
import '../../../core/provider/sign_in_state.dart';
import '../../../core/provider/sign_up_state.dart';
import '../../../widgets/button/button_libary.dart';
import '../../../widgets/text/text_libary.dart';

class RepetitiveWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          child: Expanded(
            flex: isLogin == null ? 4 : 3,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              itemCount: modelList.length,
              itemBuilder: (context, index) {
                var listItem = modelList[index];
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
        isLogin == null
            ? const SizedBox()
            : forgotPasswordButton ?? const SizedBox(),
        Flexible(
          child: CustomElevatedButton(
            primary: isActiveButtonControl(context)
                ? ColorConstant.instance.appBlue
                : ColorConstant.instance.appGreyLight,
            onPressed: isActiveButtonControl(context)
                ? () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (formKey.currentState.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  }
                : null,
            text: isLogin == null ? 'Create an Account' : 'Login',
          ),
        ),
      ],
    );
  }

  bool isActiveButtonControl(BuildContext context) {
    return isLogin == null
        ? (context.watch<SignUpState>().isFormValidateName &&
            context.watch<SignUpState>().isFormValidateEmail &&
            context.watch<SignUpState>().isFormValidatePassword)
        : (context.watch<SignInState>().isFormValidateEmail &&
                context.watch<SignInState>().isFormValidatePassword)
            ? true
            : false;
  }
}
