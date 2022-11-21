import 'package:wise_app/unit/imports.dart';


class RegisterEmailTextField extends StatelessWidget {
  const RegisterEmailTextField({
    Key? key,
  }) :  super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<UnitProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: RegisterConstants.topPaddingSize),
          child: Row(
            children: const [
              Text(RegisterTextConstants.yourEmail),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: RegisterConstants.emailTopPaddingSize),
          child: TextField(
              controller: provider.registerTextControllerEmail,
              onChanged: (e){
                provider.registerEmailCheckSufficIcon(e);
              },
              decoration: InputDecoration(
                alignLabelWithHint: true,
                suffixIcon: provider.registerEmailSuffixIcon,
                focusedBorder: LoginStyle.textFieldFocusedBorder,
                enabledBorder: LoginStyle.textFieldEnabledBorder,
              )),
        ),
      ],
    );
  }
}