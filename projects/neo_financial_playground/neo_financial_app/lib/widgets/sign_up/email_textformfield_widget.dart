import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/icon_constants.dart';
import 'package:provider/provider.dart';

import '../../core/data/constants/text_constants.dart';
import '../../core/provider/user_state.dart';

class EmailTextFormFieldWidget extends StatelessWidget {
  const EmailTextFormFieldWidget({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context, listen: false);
    final userStateWithListen = Provider.of<UserState>(context, listen: true);

    return TextFormField(
      onChanged: ((value) {
        userState.setEmail(value);
        userState.controlEmail();
      }),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: TextConstants.signUpHomeTextFormFieldEmailText,
        labelStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.black12,
        filled: true,
        suffixIcon: userStateWithListen.email.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(
                    IconConstants.signUpHomeEmailTextFormFieldCancelIcon),
                onPressed: () {
                  controller.clear();
                  userState.setEmail('');
                },
              ),
      ),
      validator: (value) => userState.emailStatus
          ? TextConstants.signUpHomeTextFormFieldErrorEmailText
          : null,
    );
  }
}
