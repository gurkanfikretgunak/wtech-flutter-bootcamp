import 'package:wise_app/unit/imports.dart';

class RegisterAllDoneContent extends StatelessWidget {
  const RegisterAllDoneContent({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: SizedBox(
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                RegisterTextConstants.allDoneContentText,
                style: RegisterStyle.registerAllDoneContentStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
