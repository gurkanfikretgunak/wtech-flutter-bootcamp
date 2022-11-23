import 'package:wise_app/unit/imports.dart';

class VerifyPhoneTextField extends StatelessWidget {
  const VerifyPhoneTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UnitProvider>(context);
    final providerTheme = Provider.of<ThemeProvider>(context);
    final size = MediaQuery.of(context).size;
    return Column(children: [
      Padding(
        padding:
            const EdgeInsets.only(top: RegisterConstants.topPaddingSizeCountry),
        child: Row(
          children: [
            Text(
              RegisterTextConstants.yourPhone,
              style: RegisterStyle.emailPageTopContentTextStyle(providerTheme),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: RegisterConstants.emailTopPaddingSize),
        child: Row(
          children: [
            SizedBox(
              width: size.width/5,
              child: TextField(
                textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  controller: provider.registerTextControllerVerifyPhoneCountryCode,
                  onChanged: (e){
                    provider.registerVerifyPhoneCountryCodeCheckSufficIcon(e);
                  },
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: "+95",
                    focusedBorder: LoginStyle.textFieldFocusedBorder,
                    enabledBorder: LoginStyle.textFieldEnabledBorder,
                  )),
            ),
            SizedBox(width: 15),
            Expanded(
              child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: provider.registerTextControllerVerifyPhoneNumber,
                  onChanged: (e){
                    provider.registerVerifyPhoneNumberCheckSufficIcon(e);
                  },
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    suffixIcon: provider.registerVerifyPhoneNumberSuffixIcon,
                    focusedBorder: LoginStyle.textFieldFocusedBorder,
                    enabledBorder: LoginStyle.textFieldEnabledBorder,
                  )),
            ),
          ],
        ),
      ),
    ]);
  }
}
