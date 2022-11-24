import 'package:wise_app/unit/imports.dart';

class RegisterCreatePasswordTopText extends StatelessWidget {
  const RegisterCreatePasswordTopText({
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
              RegisterTextConstants.createPasswordTopTextTitle,
              style: RegisterStyle.emailPageTopTitleTextStyle(provider),
            ),
          ],
        ),
      ],
    );
  }
}
