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

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key, this.emailController}) : super(key: key);
  final TextEditingController? emailController;
  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    FormProvider _formProvider = Provider.of<FormProvider>(context);
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
                "Change your Password",
                style: Theme.of(context).textTheme.headline1,
              ),
            ]),
          ),
          Text("Please enter your new password.",
              style: Theme.of(context).textTheme.subtitle1, textAlign: TextAlign.left),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              height: 230,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(CustomTextConstants.yourPasswordText, style: Theme.of(context).textTheme.subtitle1),
                  CustomInputDecoration(
                    labelText: CustomTextConstants.passwordLabelText,
                    inputIcon: Icons.visibility_rounded,
                    unInputIcon: Icons.visibility_off_rounded,
                    deneme: true,
                    onChanged: _formProvider.validatePassword,
                    errorText: _formProvider.password.error,
                    controller: passwordController,
                  ),
                  Consumer<ServiceProvider>(builder: (context, data, child) {
                    return Consumer<FormProvider>(builder: (context, value, child) {
                      return CustomAuthButton(
                          buttonTexts: "Reset your Password",
                          onPressed: () async {
                            if (value.passwordValidate) {
                              bool isCheck =
                                  await data.updateUser(passwordController.text.toString().replaceAll(" ", ""));

                              if (isCheck) {
                                // ignore: use_build_context_synchronously
                                Navigator.pop(context);
                                final snackBar = SnackBar(
                                  content: const Text('Change Your Password!'),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {},
                                  ),
                                );

                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              } else {
                                // ignore: use_build_context_synchronously
                                Navigator.pop(context);

                                // ignore: use_build_context_synchronously
                                final snackBar = SnackBar(
                                  content: const Text('ERROR!'),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {},
                                  ),
                                );

                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              }
                            }
                          });
                    });
                  }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
