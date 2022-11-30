import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/color_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/provider/login_notifier.dart';
import 'package:eventbrite_app/core/init/provider/register_notifier.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:eventbrite_app/widgets/custom_text_form_field.dart';
import 'package:eventbrite_app/widgets/terms_conditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget with PaddingConstants {
  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterNotifier provider = Provider.of<RegisterNotifier>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.registerAppBarTitle, style: Theme.of(context).textTheme.headline3),
        elevation: 3,
      ),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Padding(
              padding: defaultPadding * 2,
              child: Form(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: size.height * 0.6,
                    child: Column(
                      children: [
                        Padding(
                          padding: defaultBottomPadding * 2,
                          child: CustomTextFormField(
                            enabled: false,
                            initialValue: context.read<LoginNotifier>().email.value,
                            textColor: Colors.grey,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: AppConstants.emailLabelText,
                          ),
                        ),
                        CustomTextFormField(
                          onChanged: (value) {
                            provider.validateEmail(context.read<LoginNotifier>().email.value, value);
                          },
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: AppConstants.confirmEmailLabelText,
                          errorText: provider.confirmEmail.error,
                          hintText: AppConstants.confirmEmailHintText,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Padding(
                          padding: defaultVerticalPadding * 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  onChanged: (value) {
                                    provider.validateFirstName(value);
                                  },
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: AppConstants.firstNameLabelText,
                                  errorText: provider.firstName.error,
                                  hintText: AppConstants.firstNameHintText,
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: CustomTextFormField(
                                  onChanged: (value) {
                                    provider.validateLastName(value);
                                  },
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: AppConstants.surnameLabelText,
                                  errorText: provider.lastName.error,
                                  hintText: AppConstants.surnameHintText,
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(
                          onChanged: (value) {
                            provider.checkPassword(value);
                          },
                          suffixIcon: IconButton(
                            onPressed: () {
                              provider.isObsecure();
                            },
                            icon: Icon(provider.isObscure ? Icons.visibility : Icons.visibility_off),
                          ),
                          helperText: provider.helperText,
                          obscureText: provider.isObscure,
                        ),
                        provider.strength > 0
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: LinearProgressIndicator(
                                        value: provider.strength,
                                        minHeight: 10,
                                        backgroundColor: ColorConstants.passwordIndicatorBg,
                                        valueColor: AlwaysStoppedAnimation<Color>(provider.strength < 0.3
                                            ? ColorConstants.passwordWeakColor
                                            : provider.strength < 0.6
                                                ? ColorConstants.passwordMediumColor
                                                : ColorConstants.passwordStrongColor),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            : Container(),
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
                  padding: defaultPadding,
                  child: CustomElevatedButton(
                    text: AppConstants.registerButtonText,
                    onPressed: provider.isValid
                        ? () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => TermsConditionWidget(),
                            );
                          }
                        : null,
                    color: Theme.of(context).primaryColor,
                    textStyle: Theme.of(context).textTheme.button ?? const TextStyle(),
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
