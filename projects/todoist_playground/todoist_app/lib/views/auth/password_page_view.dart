import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/constants/router_name_constants.dart';
import 'package:todoist_app/views/auth/sign_up_page_view.dart';
import 'package:todoist_app/widgets/custom_methods.dart';
import '../../constants/text/auth_constants.dart';
import '../../core/provider/service_provider.dart';
import '../../core/provider/validation_provider.dart';
import '../../widgets/button_widgets/sign_up_button.dart';
import '../../widgets/input_decoration_widgets/input_decoration_widget.dart';
import '../home_page_view.dart';

class LoginPasswordView extends StatefulWidget {
  const LoginPasswordView({Key? key, this.emailController}) : super(key: key);
  final TextEditingController? emailController;
  @override
  State<LoginPasswordView> createState() => _LoginPasswordViewState();
}

class _LoginPasswordViewState extends State<LoginPasswordView> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const String usersText = "Using nur@gmail.com to log in.";
    return Padding(
      padding: CustomMethods.sheetBottomValue(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 95,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              Text(
                CustomTextConstants.logWithPasswordText,
                style: Theme.of(context).textTheme.headline1,
              ),
            ]),
          ),
          Text(usersText, style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 18)),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              height: 230,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(CustomTextConstants.yourPasswordText, style: Theme.of(context).textTheme.subtitle1),
                  const CustomInputDecoration(
                      labelText: CustomTextConstants.passwordLabelText,
                      inputIcon: Icons.visibility_rounded,
                      unInputIcon: Icons.visibility_off_rounded,
                      deneme: true),
                  Consumer<ServiceProvider>(builder: (context, data, child) {
                    return Consumer<FormProvider>(builder: (context, value, child) {
                      return CustomAuthButton(
                          buttonTexts: CustomTextConstants.buttonTextEmail,
                          onPressed: () async {
                            bool isCheck =
                                await data.userPasswordController(passwordController, widget.emailController);
                            if (value.passwordValidate) {
                              if (isCheck) {
                                // ignore: use_build_context_synchronously
                                Navigator.pushNamed(context, loadingRoute);
                                await loginAction();
                                // ignore: use_build_context_synchronously
                                CustomMethods.settingModalBottomSheet(context, const MyHomePage());
                              } else {
                                // ignore: use_build_context_synchronously
                                CustomMethods.settingModalBottomSheet(context, const LoginPasswordView());
                              }
                            }
                          });
                    });
                  }),
                  Center(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(CustomTextConstants.forgotPasswordText,
                              style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 13))))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
