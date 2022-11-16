import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/constant/padding.dart';
import 'package:robinhood_playground/widget/signup/password_text_field.dart';
import 'package:robinhood_playground/widget/signup/sign_up_title.dart';
import 'package:robinhood_playground/product/navigator/navigator_routes.dart';
import 'package:robinhood_playground/user_cache/shared_keys.dart';
import 'package:robinhood_playground/user_cache/shared_manager.dart';

import '../../core/widget/button/general_button.dart';

class GetPasswordView extends StatefulWidget {
  const GetPasswordView({super.key});

  @override
  State<GetPasswordView> createState() => _GetPasswordViewState();
}

class _GetPasswordViewState extends State<GetPasswordView> {
  bool _isVisible = true;
  bool _isActive = false;
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(() {
      setState(() {
        _isActiveControl();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
  }

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  _isActiveControl() {
    _passwordController.text.isNotEmpty ? _isActive = true : _isActive = false;
  }

  Future<void> _saveAndNavigate() async {
    SharedManager.instance
        .setStringValue(SharedKeys.password, _passwordController.text);
    Navigator.of(context).pushNamed(NavigateRoutes.firslastname.name);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        elevation: 0,
      ),
      body: Padding(
        padding: GeneralPadding().generalHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: _PasswordViewPadding.titleTop,
                child: const SignUpTitle(title: _PasswordText.choosePassword)),
            Padding(
              padding: _PasswordViewPadding.textFieldTop,
              child: SignUpPasswordTextField(
                  passwordController: _passwordController,
                  isVisible: _isVisible),
            ),
            Padding(
              padding: _PasswordViewPadding.showPasswordTop,
              child: _isActive
                  ? InkWell(
                      onTap: () {
                        _changeVisible();
                      },
                      child: const _ShowPassword(),
                    )
                  : const SizedBox.shrink(),
            ),
            Padding(
              padding: _PasswordViewPadding.continueButtonTop,
              child: Opacity(
                opacity: _isActive ? 1 : 0.2,
                child: GenerealButton(
                  text: _PasswordText.continueButton,
                  backgroundColor: GeneralButtonColor.black.getColor(),
                  onPressed: _saveAndNavigate,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class _ShowPassword extends StatelessWidget {
  const _ShowPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _PasswordText.showPassword,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class _PasswordText {
  static const choosePassword = 'Choose a password';
  static const showPassword = 'Show password';
  static const continueButton = 'Continue';
}

class _PasswordViewPadding {
  static EdgeInsets titleTop = const EdgeInsets.only(top: 10);
  static EdgeInsets textFieldTop = const EdgeInsets.only(top: 80);
  static EdgeInsets showPasswordTop = const EdgeInsets.only(top: 20);
  static EdgeInsets continueButtonTop = const EdgeInsets.only(top: 50);
}
