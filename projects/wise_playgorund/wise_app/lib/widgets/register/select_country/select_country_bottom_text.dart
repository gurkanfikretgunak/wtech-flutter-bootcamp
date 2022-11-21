import 'package:wise_app/unit/imports.dart';

class RegisterSelectCountryBottomText extends StatelessWidget {
  const RegisterSelectCountryBottomText({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 30,
      alignment: Alignment.center,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: RegisterTextConstants.bottomTextList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Text(
                RegisterTextConstants.bottomTextList[index],
                style: index == 1 || index == 3
                    ? RegisterStyle
                    .emailPageBottomTextStyleList[0]
                    : RegisterStyle
                    .emailPageBottomTextStyleList[1]);
          }),
    );
  }
}