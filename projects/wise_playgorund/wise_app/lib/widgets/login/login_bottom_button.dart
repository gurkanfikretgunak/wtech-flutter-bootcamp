import 'package:wise_app/unit/imports.dart';


class LoginPageBottomButton extends StatelessWidget {
  const LoginPageBottomButton({
    Key? key,
    required this.provider,
    required this.size,
  }) : super(key: key);

  final ThemeProvider provider;
  final Size size;

  @override
  Widget build(BuildContext context) {
    List<String> iconList = [
      LoginPathConstants.googleIcon,
      LoginPathConstants.facebookIcon,
      LoginPathConstants.appleIcon,
    ];
    return Column(
      children: [
        Text(
          LoginTextConstants.orLogInWith,
          style: TextStyle(
              fontSize: 17, color: provider.loginOtherOptionsTextColor),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width - 40,
              height: 50,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: iconList.length,
                  itemBuilder: (context, index) {
                    return BottomButton(
                        iconPath: iconList[index],
                        size: size,
                        provider: provider);
                  }),
            ),
          ],
        ),
      ],
    );
  }
}


