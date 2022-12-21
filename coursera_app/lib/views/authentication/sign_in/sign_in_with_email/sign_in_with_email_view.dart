import 'package:flutter/material.dart';

import '../../../../core/components/button/button_libary.dart';
import '../../../../core/components/custom_app_bar.dart';
import '../../../../core/components/custom_or_text.dart';
import '../../../../core/components/text/text_libary.dart';
import '../../../../core/constants/color_constant.dart';
import '../../../../core/data/model/user.dart';
import '../../../../core/data/network/services/user_service.dart';
import '../../../../core/init/routes/custom_navigator.dart';
import '../../authentication_custom_widget/authentication_form.dart';
import '../../authentication_view.dart';
import 'sign_in_text_form_field_model.dart';
import 'sign_in_with_email_view_model.dart';

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
            flex:
                WidgetsBinding.instance.window.viewInsets.bottom > 0.0 ? 16 : 7,
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
                  // ignore: use_build_context_synchronously
                  CustomNavigator.goToScreen(context, '/HomeView');
                } else {
                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: CustomText(text: "User not found")));
                }
              },
            ),
          ),
          const Expanded(flex: 2, child: CustomOrText()),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(text: "Don't have an account?", fontSize: 15),
                CustomTextButton(
                  onPressed: () {
                    CustomNavigator.goToScreen(context, "/SignUpView");
                  },
                  text: 'Sign Up',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ],
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
