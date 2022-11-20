import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/provider/register_notifier.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:eventbrite_app/widgets/custom_text_form_field.dart';
import 'package:eventbrite_app/widgets/terms_conditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterNotifier provider = Provider.of<RegisterNotifier>(context);
    context.read<RegisterNotifier>().setEmail();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', style: Theme.of(context).textTheme.headline3),
        elevation: 3,
      ),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Padding(
              padding: PaddingConstants.defaultPadding * 2,
              child: Form(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: size.height * 0.6,
                    child: Column(
                      children: [
                        Padding(
                          padding: PaddingConstants.defaultBottomPadding * 2,
                          child: CustomTextFormField(
                            enabled: false,
                            initialValue: provider.email,
                            textColor: Colors.grey,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Email',
                          ),
                        ),
                        CustomTextFormField(
                          onChanged: (value) {
                            provider.validateEmail(value);
                          },
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Confirm Email',
                          errorText: provider.confirmEmail.error,
                          hintText: 'Confirm Email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Padding(
                          padding: PaddingConstants.defaultVerticalPadding * 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  onChanged: (value) {
                                    provider.validateFirstName(value);
                                  },
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelText: 'First Name',
                                  errorText: provider.firstName.error,
                                  hintText: 'Enter first name',
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: CustomTextFormField(
                                  onChanged: (value) {
                                    provider.validateLastName(value);
                                  },
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelText: 'Surname',
                                  errorText: provider.lastName.error,
                                  hintText: 'Enter surname',
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
                            icon: Icon(provider.isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
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
                                        backgroundColor: Colors.grey[300],
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          provider.strength < 0.3
                                              ? Colors.red
                                              : provider.strength < 0.6
                                                  ? Colors.yellow
                                                  : Colors.green,
                                        ),
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
                  padding: PaddingConstants.defaultPadding,
                  child: CustomElevatedButton(
                    text: 'Sign Up',
                    onPressed: provider.isValid
                        ? () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) =>
                                    const TermsConditionWidget());
                          }
                        : null,
                    color: Theme.of(context).primaryColor,
                    textStyle:
                        Theme.of(context).textTheme.button ?? const TextStyle(),
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
