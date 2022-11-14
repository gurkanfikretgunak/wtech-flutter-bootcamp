import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/constant/padding.dart';
import 'package:robinhood_playground/core/widget/button/general_button.dart';
import 'package:robinhood_playground/widget/email_agreement_policy.dart';

class GetEmailView extends StatefulWidget {
  const GetEmailView({super.key});

  @override
  State<GetEmailView> createState() => _GetEmailViewState();
}

class _GetEmailViewState extends State<GetEmailView> {
  final TextEditingController _controller = TextEditingController();
  bool _isActive = false;

  void _isActiveControl() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        _isActive = true;
      } else {
        _isActive = false;
      }
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
              const Padding(
                padding: _PaddingEmailView.emailTitleTop,
                child: _EmailTitle(),
              ),
              Padding(
                padding: _PaddingEmailView.descriptionTop,
                child: Text(
                  _GetEmailText().description,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Padding(
                padding: _PaddingEmailView.textFieldTop,
                child: TextField(
                  controller: _controller,
                  cursorColor: Colors.black,
                  onChanged: (value) {
                    _isActiveControl();
                  },
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  autofillHints: const [AutofillHints.email],
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
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

  void _goPasswordPage() {
    if (_isActive && _controller.text.contains('@')) {
      debugPrint('Passworde  gidecek');
    }
  }
}

class _EmailTitle extends StatelessWidget {
  const _EmailTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _GetEmailText().emailTitle,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.black,
          ),
    );
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
