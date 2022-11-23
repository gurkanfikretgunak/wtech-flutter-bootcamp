import 'package:wise_app/unit/imports.dart';

class VerifyPhoneEnterCodeTextField extends StatelessWidget {
  const VerifyPhoneEnterCodeTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UnitProvider>(context);
    final providerTheme = Provider.of<ThemeProvider>(context);
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: RegisterConstants.emailTopPaddingSize, bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //textfield 1
              SizedBox(
                width: 45,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller:
                  provider.registerTextControllerVerifyPhoneEnterCode1,
                ),
              ),
              //textfield 2
              SizedBox(
                width: 45,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller:
                  provider.registerTextControllerVerifyPhoneEnterCode2,
                ),
              ),
              //textfield 3
              SizedBox(
                width: 45,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller:
                  provider.registerTextControllerVerifyPhoneEnterCode3,
                ),
              ),
              //textfield 4
              SizedBox(
                width: 45,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller:
                  provider.registerTextControllerVerifyPhoneEnterCode4,
                ),
              ),
              //textfield 5
              SizedBox(
                width: 45,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller:
                  provider.registerTextControllerVerifyPhoneEnterCode5,
                ),
              ),
              //textfield 6
              SizedBox(
                width: 45,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller:
                  provider.registerTextControllerVerifyPhoneEnterCode6,
                ),
              ),
            ],
          ),
        ),
        const Text(RegisterTextConstants.verifyPhoneEnterCodeContentTextTitle,
            style: RegisterStyle.verifyPhoneEnterCodeContentTextStyle)
      ],
    );
  }
}
