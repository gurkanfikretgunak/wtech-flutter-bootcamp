import 'package:coursera/core/data/enum/shared_prefence_keys.dart';
import 'package:coursera/core/data/network/services/user_service.dart';
import 'package:coursera/core/init/cache/shared_manager.dart';
import 'package:coursera/core/init/routes/custom_navigator.dart';
import 'package:coursera/views/authentication/sign_in/sign_in_with_email/sign_in_text_form_field_model.dart';
import 'package:coursera/views/authentication/sign_in/sign_in_with_email/sign_in_with_email_view_model.dart';

import '../../../../core/constants/color_constant.dart';
import '../../../../core/data/model/user.dart';
import '../../authentication_custom_widget/authentication_form.dart';
import '../../authentication_view.dart';
import '../../../../core/components/custom_app_bar.dart';
import '../../../../core/components/custom_or_text.dart';
import 'package:flutter/material.dart';
import '../../../../core/components/button/button_libary.dart';
import '../../../../core/components/text/text_libary.dart';

class SignInWithEmailView extends StatefulWidget {
  const SignInWithEmailView({super.key});

  @override
  State<SignInWithEmailView> createState() => _SignInWithEmailViewState();
}

class _SignInWithEmailViewState extends State<SignInWithEmailView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late Future<List<User>> futureUsers;
  @override
  void initState() {
    super.initState();
    futureUsers = UserService().getAll();
  }

  @override
  Widget build(BuildContext context) {
    return AuthenticationView(
      isTermsText: false,
      appBar: CustomAppBar.customAppBar(context: context),
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            flex: 3,
            child: Center(
              child: CustomText(text: 'Log into your account', fontSize: 16),
            ),
          ),
          Flexible(
            flex: 7,
            child: AuthenticationFormWidget(
              isLogin: true,
              formKey: formKey,
              modelList:
                  SignInTextFormFieldModel().buildTextFormFieldValue(context),
              forgotPasswordButton: Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: CustomText(
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.instance.appBlue,
                          text: 'Forgot Password?',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              buttonOnPressed: () async {
                bool isCheck =
                    await SignInWithEmailViewModel().loginControl(context);
                if (isCheck) {
                  StorageUtil.setBool(SharedKeys.isLogin,
                      true); //Token olsa burda cache'e kaydetmeliyim.
                  // ignore: use_build_context_synchronously
                  CustomNavigator.goToScreen(context, '/HomeView');
                } else {
                  // ignore: use_build_context_synchronously
                  CustomNavigator.goToScreen(context, '/SignUpView');
                }
              },
            ),
          ),
          const Expanded(flex: 2, child: CustomOrText()),
          Expanded(
            flex: 2,
            child: CustomTextButton(
              onPressed: () {},
              text: 'Login with your organization',
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
