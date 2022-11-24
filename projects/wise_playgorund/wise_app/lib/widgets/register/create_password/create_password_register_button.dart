import 'package:wise_app/unit/imports.dart';


class CreatePasswordRegisterButton extends StatelessWidget {
  const CreatePasswordRegisterButton({
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
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountTypeWidget()));
          },
          child: Text(
            RegisterTextConstants.registerButtonText,
            style: RegisterStyle.nextButtonTextStyle,
          )),
    );
  }
}