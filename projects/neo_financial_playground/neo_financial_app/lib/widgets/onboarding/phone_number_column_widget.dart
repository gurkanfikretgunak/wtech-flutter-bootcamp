import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/sign_up_state.dart';

class PhoneNumberColumnWidget extends StatefulWidget {
  const PhoneNumberColumnWidget({super.key});

  @override
  State<PhoneNumberColumnWidget> createState() =>
      _PhoneNumberColumnWidgetState();
}

class _PhoneNumberColumnWidgetState extends State<PhoneNumberColumnWidget> {
  @override
  Widget build(BuildContext context) {
    final signupState = Provider.of<SignUpState>(context, listen: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('What\'s your mobile number?',
            style: Theme.of(context).textTheme.labelMedium),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('A verification code will be sent tot this number.',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            onChanged: (value) => {signupState.setPhone(value)},
            decoration: const InputDecoration(
              labelText: "Mobile number",
              fillColor: Colors.black12,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
