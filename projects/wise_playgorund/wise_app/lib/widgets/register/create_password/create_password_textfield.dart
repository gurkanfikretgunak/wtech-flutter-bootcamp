import 'package:wise_app/unit/imports.dart';

class RegisterCreatePasswordTextField extends StatelessWidget {
  const RegisterCreatePasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UnitProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: RegisterConstants.topPaddingSize),
          child: Row(
            children: const [
              Text(RegisterTextConstants.password),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: RegisterConstants.emailTopPaddingSize),
          child: TextField(
              controller: provider.registerTextControllerCreatePassword,
              obscureText: provider.isObscure,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                suffixIcon: IconButton(
                    onPressed: () {
                      if (kDebugMode) {
                        provider.changeisObscure();
                      }
                    },
                    icon: provider.passwordIcon),
                focusedBorder: LoginStyle.textFieldFocusedBorder,
                enabledBorder: LoginStyle.textFieldEnabledBorder,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: const [
              Text("At least 9 character,containing a letter and a number"),
            ],
          ),
        ),
      ],
    );
  }
}
