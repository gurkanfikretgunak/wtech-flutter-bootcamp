import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/widgets/custom_methods.dart';
import '../../core/provider/service_provider.dart';

class CustomLogInButton extends StatefulWidget {
  const CustomLogInButton(
      {Key? key,
      required this.buttonTexts,
      required this.hasDataWidget,
      this.emailController,
      required this.nullDataWidget,
      this.passwordController})
      : super(key: key);
  final String buttonTexts;
  final Widget hasDataWidget;
  final Widget nullDataWidget;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  @override
  State<CustomLogInButton> createState() => _CustomLogInButtonState();
}

class _CustomLogInButtonState extends State<CustomLogInButton> {
  @override
  void initState() {
    super.initState();
    final dataProvider = Provider.of<ServiceProvider>(context, listen: false);
    dataProvider.fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ServiceProvider>(
      builder: (context, value, child) => SizedBox(
        height: 50,
        width: 350,
        child: ElevatedButton(
          onPressed: () async {
            bool isCheck = await value.userController(widget.emailController);
            if (isCheck) {
              // ignore: use_build_context_synchronously
              CustomMethods.settingModalBottomSheet(context, widget.hasDataWidget);
            } else {
              // ignore: use_build_context_synchronously
              CustomMethods.settingModalBottomSheet(context, widget.nullDataWidget);
            }
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.buttonTexts,
                  style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
