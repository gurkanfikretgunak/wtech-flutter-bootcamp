import 'package:wise_app/unit/imports.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.size,
    required this.provider,
    required this.iconPath,
  }) : super(key: key);

  final Size size;
  final String iconPath;
  final ThemeProvider provider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width / 3.6,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: provider.elevationButtonBorderColor),
            backgroundColor: provider.elevationButtonBackgroundColor,
          ),
          onPressed: () {
            if (kDebugMode) {}
          },
          child: SizedBox(
              width: 28,
              height: 28,
              child: Image.asset(iconPath,
                  color: provider.theme == ThemeData.dark()
                      ? iconPath == LoginPathConstants.appleIcon
                          ? Colors.white
                          : null
                      : null))),
    );
  }
}
