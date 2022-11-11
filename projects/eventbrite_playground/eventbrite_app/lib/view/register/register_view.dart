import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              const CustomTextFormField(
                enabled: false,
                initialValue: "melihcelik0909@gmail.com",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Email',
              ),
              const CustomTextFormField(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Confirm Email',
                hintText: 'Confirm Email',
                keyboardType: TextInputType.emailAddress,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: CustomTextFormField(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'First Name',
                      hintText: 'Enter first name',
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: CustomTextFormField(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Surname',
                      hintText: 'Enter surname',
                      keyboardType: TextInputType.name,
                    ),
                  ),
                ],
              ),
              CustomTextFormField(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: const Icon(Icons.remove_red_eye),
                ),
                helperText: 'Password must have at least 8 characters',
                obscureText: _isObscure,
              ),
              const Spacer(),
              const Divider(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Sign Up'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final bool? obscureText;
  final String? initialValue;
  final bool? enabled;
  final TextInputType? keyboardType;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final Widget? suffixIcon;
  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.obscureText,
    this.initialValue,
    this.enabled,
    this.keyboardType,
    this.floatingLabelBehavior,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      enabled: enabled,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        floatingLabelBehavior:
            floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        suffixIcon: suffixIcon,
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
      ),
    );
  }
}
