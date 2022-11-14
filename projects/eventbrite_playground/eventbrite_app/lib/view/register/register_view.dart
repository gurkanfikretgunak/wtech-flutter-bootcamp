import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:eventbrite_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _isObscure = true;
  RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  late String password;
  double _strength = 0;
  String _helperText = 'Password must have at least 8 characters.';
  @override
  void initState() {
    super.initState();
    password = '';
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Padding(
              padding: Paddings.defaultPadding * 2,
              child: Form(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: size.height * 0.6,
                    child: Column(
                      children: [
                        Padding(
                          padding: Paddings.defaultBottomPadding * 2,
                          child: const CustomTextFormField(
                            enabled: false,
                            initialValue: "melihcelik0909@gmail.com",
                            textColor: Colors.grey,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Email',
                          ),
                        ),
                        CustomTextFormField(
                          onChanged: (value) => debugPrint(value),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Confirm Email',
                          hintText: 'Confirm Email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Padding(
                          padding: Paddings.defaultVerticalPadding * 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  onChanged: (value) => debugPrint(value),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: 'First Name',
                                  hintText: 'Enter first name',
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: CustomTextFormField(
                                  onChanged: (value) => debugPrint(value),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: 'Surname',
                                  hintText: 'Enter surname',
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(
                          onChanged: (value) => _checkPassword(value),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                          ),
                          helperText: _helperText,
                          obscureText: _isObscure,
                        ),
                        password.isNotEmpty
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: LinearProgressIndicator(
                                        value: _strength,
                                        minHeight: 10,
                                        backgroundColor: Colors.grey[300],
                                        valueColor: AlwaysStoppedAnimation<Color>(
                                          _strength < 0.3
                                              ? Colors.red
                                              : _strength < 0.6
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
                    padding: Paddings.defaultPadding,
                    child: CustomElevatedButton(
                      text: 'Sign Up',
                      onPressed: () {},
                      color: const Color(0xFFC14D25),
                      textStyle: const TextStyle(fontWeight: FontWeight.w900),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _checkPassword(String value) {
    password = value.trim();
    if (password.isEmpty) {
      setState(() {
        _strength = 0;
        _helperText = 'Password must have at least 8 characters.';
      });
    } else if (password.length < 8) {
      setState(() {
        _strength = 0.25;
        _helperText = 'Weak';
      });
    } else {
      if (!regex.hasMatch(password)) {
        setState(() {
          _strength = 0.5;
          _helperText = 'Average';
        });
      } else {
        setState(() {
          // should contain at least one upper case
          // should contain at least one lower case
          // should contain at least one digit
          // should contain at least one special character
          // Must be at least 8 characters in length
          _strength = 1;
          _helperText = 'Great!';
        });
      }
    }
  }
}

class Paddings {
  static const EdgeInsets defaultPadding = EdgeInsets.all(10);
  static const EdgeInsets defaultBottomPadding = EdgeInsets.only(bottom: 10);
  static const EdgeInsets defaultVerticalPadding = EdgeInsets.symmetric(vertical: 10);
}
