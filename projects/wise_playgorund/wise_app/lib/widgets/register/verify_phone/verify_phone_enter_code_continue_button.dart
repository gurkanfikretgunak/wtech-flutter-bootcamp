import 'package:wise_app/unit/imports.dart';


class VerifyPhoneEnterCodeContinueButton extends StatelessWidget {
  const VerifyPhoneEnterCodeContinueButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 50,
      child: ElevatedButton(
          style: RegisterStyle.nextButtonStyle,
          onPressed: () {
            /*Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VerifyPhoneEnterCode()));*/
          },
          child: Text(
            RegisterTextConstants.enterCodeButtonText,
            style: RegisterStyle.nextButtonTextStyle,
          )),
    );
  }
}
