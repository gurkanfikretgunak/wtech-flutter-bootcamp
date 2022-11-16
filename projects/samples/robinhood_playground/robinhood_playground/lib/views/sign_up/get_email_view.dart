import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/constant/padding.dart';
import 'package:robinhood_playground/core/widget/button/general_button.dart';
import 'package:robinhood_playground/widget/signup/e_mail_text_field.dart';
import 'package:robinhood_playground/widget/signup/sign_up_description.dart';
import 'package:robinhood_playground/widget/signup/sign_up_title.dart';
import 'package:robinhood_playground/product/navigator/navigator_routes.dart';
import 'package:robinhood_playground/user_cache/shared_keys.dart';
import 'package:robinhood_playground/user_cache/shared_manager.dart';
import 'package:robinhood_playground/widget/email_agreement_policy.dart';

class GetEmailView extends StatefulWidget {
  const GetEmailView({super.key});

  @override
  State<GetEmailView> createState() => _GetEmailViewState();
}

class _GetEmailViewState extends State<GetEmailView> {
  final TextEditingController _controller = TextEditingController();
  bool _isActive = false;

  _isActiveControl() {
    _controller.text.isNotEmpty ? _isActive = true : _isActive = false;
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isActiveControl();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.clear_outlined,
                color: Colors.black,
              )),
        ),
        body: Padding(
          padding: GeneralPadding().generalHorizontal,
          child: Column(
            children: [
              Padding(
                  padding: _PaddingEmailView.emailTitleTop,
                  child: SignUpTitle(
                    title: _GetEmailText().emailTitle,
                  )),
              Padding(
                  padding: _PaddingEmailView.descriptionTop,
                  child: SignUpDescription(
                      description: _GetEmailText().description)),
              Padding(
                padding: _PaddingEmailView.textFieldTop,
                child: SignUpEmailTextField(controller: _controller),
              ),
              const Padding(
                  padding: _PaddingEmailView.policyTop,
                  child: EmailAgreemnetPolicy()),
              Padding(
                padding: _PaddingEmailView.continueTop,
                child: Opacity(
                  opacity: _isActive ? 1 : 0.2,
                  child: GenerealButton(
                    text: _GetEmailText().continueButton,
                    backgroundColor: GeneralButtonColor.black.getColor(),
                    onPressed: _goPasswordPage,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _goPasswordPage() async {
    if (await _authentication()) {
      Navigator.of(context).pushNamed(NavigateRoutes.passwordsignup.name);
    }
  }

  Future<bool> _authentication() async {
    if (_isActive && _controller.text.contains('@')) {
      await SharedManager.instance
          .setStringValue(SharedKeys.email, _controller.text);
      return true;
    } else {
      return false;
    }
  }
}

class _GetEmailText {
  final String emailTitle = 'What\'s your email address?';
  final String description = 'You\'ll use to this log in.';
  final String continueButton = 'Continue';
}

class _PaddingEmailView {
  static const EdgeInsets emailTitleTop = EdgeInsets.only(top: 10);
  static const EdgeInsets descriptionTop = EdgeInsets.only(top: 20);
  static const EdgeInsets textFieldTop = EdgeInsets.only(top: 50);
  static const EdgeInsets policyTop = EdgeInsets.only(top: 20);
  static const EdgeInsets continueTop = EdgeInsets.only(top: 20);
}
