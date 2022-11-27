import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/provider/login_notifier.dart';
import 'package:eventbrite_app/core/init/provider/navbar_notifier.dart';
import 'package:eventbrite_app/core/init/provider/password_notifier.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:eventbrite_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PasswordView extends StatelessWidget {
  const PasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PasswordNotifier>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In', style: Theme.of(context).textTheme.headline3),
        elevation: 3,
      ),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Padding(
              padding: PaddingConstants.defaultPadding * 3,
              child: Form(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: size.height * 0.6,
                    child: Column(
                      children: [
                        Container(
                          padding: PaddingConstants.defaultPadding,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          child: Icon(
                            Icons.person,
                            size: size.width * 0.15,
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                        Padding(
                          padding: PaddingConstants.defaultTopPadding,
                          child: Text(
                            context.read<LoginNotifier>().email.value ?? '',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Change')),
                        Padding(
                          padding: PaddingConstants.defaultBottomPadding * 2,
                          child: CustomTextFormField(
                            onChanged: (value) {
                              context.read<PasswordNotifier>().validatePassword(value);
                            },
                            suffixIcon: IconButton(
                              onPressed: () {
                                provider.isObsecure();
                              },
                              icon: Icon(provider.isObscure ? Icons.visibility : Icons.visibility_off),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Password',
                            hintText: 'Enter password',
                            obscureText: provider.isObscure,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const Spacer(),
                const Divider(),
                Padding(
                  padding: PaddingConstants.defaultPadding,
                  child: CustomElevatedButton(
                    text: 'Log In',
                    onPressed: provider.isValid
                        ? () {
                            provider
                                .login(
                              email: context.read<LoginNotifier>().email.value ?? '',
                              password: provider.password.value ?? '',
                            )
                                .then((value) {
                              context.read<NavbarNotifier>().updateIndex(0);
                            });
                          }
                        : null,
                    color: Theme.of(context).primaryColor,
                    textStyle: Theme.of(context).textTheme.button ?? const TextStyle(),
                  ),
                ),
                Padding(
                  padding: PaddingConstants.defaultHorizontalPadding,
                  child: CustomElevatedButton(
                    text: 'Email me a login link',
                    border: true,
                    onPressed: () {},
                    color: Theme.of(context).backgroundColor,
                    textStyle: Theme.of(context).textTheme.caption ?? const TextStyle(),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('I forgot my password'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
