import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/data/constants/icon_constants.dart';
import '../../core/data/constants/text_constants.dart';
import '../../core/provider/user_state.dart';

class PasswordTextFormFieldWidget extends StatelessWidget {
  const PasswordTextFormFieldWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context, listen: false);
    final userStateWithListen = Provider.of<UserState>(context, listen: true);
    return TextFormField(
      onChanged: ((value) {
        userStateWithListen.setPassword(value);
        userState.controlPassword();
      }),
      obscureText: userStateWithListen.isHidden,
      keyboardType: TextInputType.visiblePassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        labelText: TextConstants.signUpHomeTextFormFieldPasswordText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: userState.secondBar),
        ),
        labelStyle: TextStyle(color: userState.secondBar),
        fillColor: Colors.black12,
        filled: true,
        suffixIcon: userState.password.isEmpty
            ? Container(width: 0)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: userState.isHidden
                        ? const Icon(IconConstants
                            .signUpHomePasswordTextFormFieldVisibilityOffIcon)
                        : const Icon(IconConstants
                            .signUpHomePasswordTextFormFieldVisibilityIcon),
                    onPressed: () {
                      userState.isHidden == true
                          ? userState.setIsHidden(false)
                          : userState.setIsHidden(true);
                    },
                  ),
                  IconButton(
                    icon: const Icon(IconConstants
                        .signUpHomePasswordTextFormFieldCancelIcon),
                    onPressed: () {
                      controller.clear();
                      userState.setPassword('');
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
