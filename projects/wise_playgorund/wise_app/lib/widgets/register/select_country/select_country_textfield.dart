import 'package:wise_app/unit/imports.dart';

class RegisterSelectCountryTextField extends StatelessWidget {
  const RegisterSelectCountryTextField({
    Key? key,
  }) :  super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<UnitProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: RegisterConstants.topPaddingSizeCountry),
          child: Row(
            children: const [
              Text(RegisterTextConstants.country),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: RegisterConstants.emailTopPaddingSize),
          child: TextField(
              controller: provider.registerTextControllerSelectCountry,
              onChanged: (e){
                provider.registerSelectCountryCheckSufficIcon(e);
              },
              decoration: InputDecoration(
                alignLabelWithHint: true,
                suffixIcon: provider.registerSelectCountrySuffixIcon,
                focusedBorder: LoginStyle.textFieldFocusedBorder,
                enabledBorder: LoginStyle.textFieldEnabledBorder,
              )),
        ),
      ],
    );
  }
}