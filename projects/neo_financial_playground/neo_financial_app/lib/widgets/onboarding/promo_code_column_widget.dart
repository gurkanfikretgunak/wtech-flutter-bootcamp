import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/sign_up_state.dart';

//TODO: Promo side will add to MockApi and Onboard class will be update
class PromocodeColumnWidget extends StatefulWidget {
  const PromocodeColumnWidget({super.key});

  @override
  State<PromocodeColumnWidget> createState() => _PromocodeColumnWidgetState();
}

class _PromocodeColumnWidgetState extends State<PromocodeColumnWidget> {
  late TextEditingController codeController;
  bool isHidden = true;
  @override
  void initState() {
    codeController = TextEditingController(
        text: Provider.of<SignUpState>(context, listen: false).promoCode);

    codeController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    codeController.removeListener(onListen);
    super.dispose();
  }

  void onListen() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final signUpState = Provider.of<SignUpState>(context, listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Have a promo code?',
            style: Theme.of(context).textTheme.headlineLarge),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              onChanged: ((value) => signUpState.setPromoCode(value)),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.text,
              controller: codeController,
              validator: (value) =>
                  value!.length < 5 ? 'Plese enter a valid code' : null,
              decoration: InputDecoration(
                labelText: "Code",
                fillColor: Colors.black12,
                filled: true,
                suffixIcon: codeController.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: const Icon(Icons.cancel),
                        onPressed: () {
                          codeController.clear();
                          signUpState.setPromoCode('');
                        },
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
