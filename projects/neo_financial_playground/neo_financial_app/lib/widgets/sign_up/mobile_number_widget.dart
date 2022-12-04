import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/icon_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:provider/provider.dart';

import '../../core/data/constants/padding_constants.dart';
import '../../core/provider/user_state.dart';

class MobileNumberWidget extends StatelessWidget {
  MobileNumberWidget({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context, listen: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(TextConstants.mobileNumberTitleText,
            style: Theme.of(context).textTheme.labelMedium),
        Padding(
          padding: PaddingConstants.mediumVerticalPadding,
          child: Text(TextConstants.mobileNumberBodyText,
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        Padding(
          padding: PaddingConstants.mediumVerticalPadding,
          child: TextFormField(
            onChanged: (value) => {userState.setPhone(value)},
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.phone,
            controller: _controller,
            validator: (value) => value!.length <= 13
                ? TextConstants.mobileNumberTextFormFieldErrorText
                : null,
            decoration: InputDecoration(
              labelText: TextConstants.mobileNumberTextFormFieldText,
              fillColor: Colors.black12,
              filled: true,
              suffixIcon: userState.phone.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      icon: const Icon(
                          IconConstants.mobileNumberTextFormFieldIcon),
                      onPressed: () {
                        _controller.clear();
                        userState.setPhone('');
                      },
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
