import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/sign_up_state.dart';

class PhoneNumberColumnWidget extends StatelessWidget {
  PhoneNumberColumnWidget({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final signUpState = Provider.of<SignUpState>(context, listen: false);

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
          child: TextFormField(
            onChanged: (value) => {signUpState.setPhone(value)},
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.phone,
            controller: _controller,
            validator: (value) =>
                value!.length <= 13 ? 'Plese enter a valid number' : null,
            decoration: InputDecoration(
              labelText: "Mobile number",
              fillColor: Colors.black12,
              filled: true,
              suffixIcon: signUpState.phone.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        _controller.clear();
                        signUpState.setPhone('');
                      },
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
