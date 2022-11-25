import 'package:flutter/material.dart';

class TelephoneNumberTextField extends StatefulWidget {
  const TelephoneNumberTextField(
      {required TextEditingController telephoneController, Key? key})
      : _telephoneController = telephoneController,
        super(key: key);

  final TextEditingController _telephoneController;
  @override
  State<TelephoneNumberTextField> createState() =>
      _TelephoneNumberTextFieldState();
}

class _TelephoneNumberTextFieldState extends State<TelephoneNumberTextField> {
  final String _countryCode = '+1';
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._telephoneController,
      keyboardType: TextInputType.number,
      autofocus: false,
      autofillHints: const [AutofillHints.telephoneNumber],
      //textAlign: TextAlign.center,
      decoration: InputDecoration(
          prefixStyle: const TextStyle(color: Colors.black),
          prefix: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 4, right: 4),
            child: Text(
              _countryCode,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          hintStyle: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.black38, fontWeight: FontWeight.w500),
          hintText: 'Phone Number'),
    );
  }
}
