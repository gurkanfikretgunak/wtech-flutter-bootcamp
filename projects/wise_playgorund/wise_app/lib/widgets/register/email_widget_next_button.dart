import 'package:wise_app/unit/imports.dart';
import 'package:wise_app/widgets/register/account_type_widget.dart';

class RegisterEmailNextButton extends StatelessWidget {
  const RegisterEmailNextButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 50,
      child: ElevatedButton(
          style: RegisterStyle.nextButtonStyle,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountTypeWidget()));
          },
          child: Text(
            RegisterTextConstants.nextButtonText,
            style: RegisterStyle.nextButtonTextStyle,
          )),
    );
  }
}