import 'package:wise_app/unit/imports.dart';

class RegisterAllDoneIconWidget extends StatelessWidget {
  const RegisterAllDoneIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: RegisterConstants.allDoneIconSize,
            height: RegisterConstants.allDoneIconSize,
            child: Image.asset(SplashPathConstants.allDoneIconPath)),
         Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child:  Text(
            RegisterTextConstants.allDoneIconBottomText,
            style: RegisterStyle.registerAllDoneTitleStyle,
          ),
        ),
      ],
    );
  }
}
