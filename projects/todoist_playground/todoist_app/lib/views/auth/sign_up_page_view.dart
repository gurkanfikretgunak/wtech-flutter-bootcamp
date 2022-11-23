import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/constants/router_name_constants.dart';
import 'package:todoist_app/core/provider/service_provider.dart';
import 'package:todoist_app/views/auth/pick_theme_page_view.dart';
import 'package:todoist_app/views/auth/login_with_email_view.dart';
import '../../constants/text/auth_constants.dart';
import '../../core/provider/validation_provider.dart';
import '../../widgets/button_widgets/sign_up_button.dart';
import '../../widgets/custom_methods.dart';
import '../../widgets/input_decoration_widgets/input_decoration_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key, this.emailController}) : super(key: key);
  final TextEditingController? emailController;
  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    final dataProvider = Provider.of<ServiceProvider>(context, listen: false);
    dataProvider.fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    FormProvider formProvider = Provider.of<FormProvider>(context);
    //List<String> listele = [];
    return Form(
        key: formKey,
        child: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              end: 20,
              bottom: 30,
              top: 8,
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  height: 95,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    Text("Sign Up", style: Theme.of(context).textTheme.headline1)
                  ])),
              Text(CustomTextConstants.userEmailTLogInext,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 18)),
              Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                      height: 230,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(CustomTextConstants.yourNameText,
                                style: Theme.of(context).textTheme.subtitle1?.copyWith()),
                            CustomInputDecoration(
                                labelText: "Name",
                                controller: nameTextController,
                                deneme: true,
                                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s"))],
                                onChanged: formProvider.validateName,
                                errorText: formProvider.name.error),
                            Text(CustomTextConstants.yourPasswordText,
                                style: Theme.of(context).textTheme.subtitle1?.copyWith()),
                            CustomInputDecoration(
                                controller: passwordTextController,
                                labelText: CustomTextConstants.passwordLabelText,
                                inputIcon: Icons.visibility_rounded,
                                unInputIcon: Icons.visibility_off_rounded,
                                deneme: true,
                                onChanged: formProvider.validatePassword,
                                errorText: formProvider.password.error),
                            Consumer<ServiceProvider>(builder: (context, data, child) {
                              return Consumer<FormProvider>(builder: (context, value, child) {
                                return Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: CustomAuthButton(
                                        buttonTexts: CustomTextConstants.buttonTextEmail,
                                        onPressed: () async {
                                          if (value.signUpValidate) {
                                            bool isCheck = await data.postUser(
                                              widget.emailController,
                                              nameTextController,
                                              passwordTextController,
                                            );
                                            if (isCheck) {
                                              // ignore: use_build_context_synchronously
                                              Navigator.pushNamed(context, loadingRoute);
                                              await loginAction();
                                              // ignore: use_build_context_synchronously
                                              CustomMethods.settingModalBottomSheet(context, const ThemeSwitcher());
                                            } else {
                                              // ignore: use_build_context_synchronously
                                              CustomMethods.settingModalBottomSheet(context, const LoginWithEmail());
                                            }
                                          }
                                        }));
                              });
                            })
                          ])))
            ])));
  }
}

Future<bool> loginAction() async {
  //replace the below line of code with your login request
  await Future.delayed(const Duration(seconds: 2));
  return true;
}
