import 'package:wise_app/unit/imports.dart';

class RegisterEmailTopText extends StatelessWidget {
  const RegisterEmailTopText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Row(
      children: [
        Text(
          RegisterTextConstants.topText,
          style: RegisterStyle.emailPageTopTextStyle(provider),
        ),
      ],
    );
  }
}
