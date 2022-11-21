import 'package:wise_app/unit/imports.dart';
import 'package:wise_app/widgets/register/select_country/select_country_widget.dart';

class RegisterSelectCountryNextButton extends StatelessWidget {
  const RegisterSelectCountryNextButton({
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectCountryWidget()));
          },
          child: Text(
            RegisterTextConstants.nextButtonText,
            style: RegisterStyle.nextButtonTextStyle,
          )),
    );
  }
}