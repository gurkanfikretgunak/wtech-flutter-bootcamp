import 'package:wise_app/unit/imports.dart';

class RegisterEmailWidget extends StatelessWidget {
  const RegisterEmailWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: const [
                RegisterEmailTopText(),
                RegisterEmailTextField(),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              RegisterEmailBottomText(size: size),
              RegisterEmailNextButton(size: size),
            ],
          )
        ],
      ),
    );
  }
}
