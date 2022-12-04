import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:provider/provider.dart';

import '../../core/data/constants/icon_constants.dart';
import '../../core/provider/user_state.dart';

//TODO: Promo side will add to MockApi and Onboard class will be update
class PromoCodeWidget extends StatelessWidget {
  PromoCodeWidget({super.key});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context, listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(TextConstants.promoCodeTitleText,
            style: Theme.of(context).textTheme.labelMedium),
        Padding(
          padding: PaddingConstants.largeVerticalPadding,
          child: TextFormField(
            onChanged: ((value) => userState.setPromoCode(value)),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _controller,
            keyboardType: TextInputType.text,
            validator: (value) => value!.length < 5
                ? TextConstants.promoCodeTextFormFieldErrorText
                : null,
            decoration: InputDecoration(
              labelText: TextConstants.promoCodeTextFormFieldText,
              fillColor: Colors.black12,
              filled: true,
              suffixIcon: userState.promoCode.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      icon:
                          const Icon(IconConstants.promoCodeTextFormFieldIcon),
                      onPressed: () {
                        _controller.clear();
                        userState.setPromoCode('');
                      },
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
