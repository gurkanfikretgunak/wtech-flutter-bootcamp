import 'package:wise_app/unit/imports.dart';


class SplashWidget extends StatelessWidget {
  const SplashWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: ColorConstants.splashBackgroundColor,
      child: Image.asset(SplashPathConstants.appIconPath),
    );
  }
}