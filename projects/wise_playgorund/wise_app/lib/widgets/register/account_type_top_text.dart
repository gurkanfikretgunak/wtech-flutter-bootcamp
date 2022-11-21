import 'package:wise_app/unit/imports.dart';

class RegisterAccountTypeTopText extends StatelessWidget {
  const RegisterAccountTypeTopText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              RegisterTextConstants.accountTypeWidgetTopTextTitle,
              style: RegisterStyle.emailPageTopTitleTextStyle(provider),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(
              RegisterTextConstants.accountTypeWidgetTopTextContent,
              style:RegisterStyle.emailPageTopContentTextStyle(provider),
            ),
          ],
        ),
      ],
    );
  }
}
