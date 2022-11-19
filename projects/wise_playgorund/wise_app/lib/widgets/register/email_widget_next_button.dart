import 'package:wise_app/unit/imports.dart';

class RegisterEmailNextButton extends StatelessWidget {
  const RegisterEmailNextButton({
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
          onPressed: () {},
          child: Text(
            RegisterTextConstants.nextButtonText,
            style: RegisterStyle.nextButtonTextStyle,
          )),
    );
  }
}