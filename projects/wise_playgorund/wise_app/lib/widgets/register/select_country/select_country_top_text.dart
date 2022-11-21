import 'package:wise_app/unit/imports.dart';

class RegisterSelectCountryTopText extends StatelessWidget {
  const RegisterSelectCountryTopText({
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
              RegisterTextConstants.selectCountryWidgetTopTextTitle,
              style: RegisterStyle.emailPageTopTitleTextStyle(provider),
            ),
          ],
        ),
      ],
    );
  }
}