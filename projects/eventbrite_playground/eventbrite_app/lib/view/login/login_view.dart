import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/color_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/provider/login_notifier.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:eventbrite_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget with PaddingConstants {
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final LoginNotifier provider = Provider.of<LoginNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.loginAppBarTitle, style: Theme.of(context).textTheme.headline3),
        elevation: 3,
      ),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Padding(
              padding: defaultPadding * 2,
              child: Form(
                child: SizedBox(
                  height: size.height * 0.6,
                  child: Column(
                    children: [
                      Padding(
                        padding: defaultBottomPadding * 2,
                        child: CustomTextFormField(
                          onChanged: (value) {
                            context.read<LoginNotifier>().validateEmail(value);
                          },
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: AppConstants.emailLabelText,
                          hintText: AppConstants.emailHintText,
                          keyboardType: TextInputType.emailAddress,
                          errorText: provider.email.error,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const Spacer(),
                Padding(
                  padding: defaultHorizontalPadding + defaultRightPadding * 6,
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                              color: ColorConstants.sliverDecorationShadowColor,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Icon(
                          color: Theme.of(context).iconTheme.color,
                          size: 20,
                          Icons.confirmation_number_outlined,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        AppConstants.loginBottomText,
                        style: Theme.of(context).textTheme.subtitle2,
                      )),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: defaultPadding,
                  child: CustomElevatedButton(
                    text: AppConstants.loginButtonText,
                    border: true,
                    onPressed: provider.isValid
                        ? () {
                            provider.isEmailExist(provider.email.value!);
                          }
                        : null,
                    color: Theme.of(context).backgroundColor,
                    textStyle: Theme.of(context).textTheme.caption ?? const TextStyle(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
