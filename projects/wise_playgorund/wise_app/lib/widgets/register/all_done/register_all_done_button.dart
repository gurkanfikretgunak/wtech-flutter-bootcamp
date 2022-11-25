import 'package:wise_app/pages/home_page.dart';
import 'package:wise_app/unit/imports.dart';


class AllDoneWidgetOkButton extends StatelessWidget {
  const AllDoneWidgetOkButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 80,
      color:ColorConstants.allDoneButtonBackgroundColor ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 55,
            width: size.width-20,
            child: ElevatedButton(
                style: RegisterStyle.nextButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: Text(
                  RegisterTextConstants.gotItButtonText,
                  style: RegisterStyle.nextButtonTextStyle,
                )),
          ),
        ],
      ),
    );
  }
}
