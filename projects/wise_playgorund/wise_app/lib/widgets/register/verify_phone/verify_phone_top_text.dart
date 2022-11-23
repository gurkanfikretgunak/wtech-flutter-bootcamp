import 'package:wise_app/unit/imports.dart';

class VerifyPhoneWidgetTopText extends StatelessWidget {
  const VerifyPhoneWidgetTopText({
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
            Expanded(
              child: Text(
                RegisterTextConstants.verifyPhoneTopTextTitle,
                style: RegisterStyle.emailPageTopTitleTextStyle(provider),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(
              RegisterTextConstants.verifyPhoneTopTextContent,
              style:RegisterStyle.emailPageTopContentTextStyle(provider),
            ),
          ],
        ),
      ],
    );
  }
}