import 'package:flutter/material.dart';

class PhoneNumberColumnWidget extends StatefulWidget {
  const PhoneNumberColumnWidget({super.key});

  @override
  State<PhoneNumberColumnWidget> createState() =>
      _PhoneNumberColumnWidgetState();
}

class _PhoneNumberColumnWidgetState extends State<PhoneNumberColumnWidget> {
  @override
  Widget build(BuildContext context) {
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
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            decoration: InputDecoration(
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
