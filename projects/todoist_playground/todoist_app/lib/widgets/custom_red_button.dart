import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/provider/service_provider.dart';

class CustomRedButton extends StatefulWidget {
  const CustomRedButton(
      {Key? key, required this.buttonTexts, required this.hasDataWidget, this.controller, required this.nullDataWidget})
      : super(key: key);
  final String buttonTexts;
  final Widget hasDataWidget;
  final Widget nullDataWidget;
  final TextEditingController? controller;
  @override
  State<CustomRedButton> createState() => _CustomRedButtonState();
}

class _CustomRedButtonState extends State<CustomRedButton> {
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
            bool isCheck = await value.hasUser(widget.controller);
            if (isCheck) {
              _settingModalBottomSheet(context, widget.hasDataWidget);
            } else {
              _settingModalBottomSheet(context, widget.nullDataWidget);
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

void _settingModalBottomSheet(context, Widget datawidget) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.grey[50],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(25),
          topStart: Radius.circular(25),
        ),
      ),
      builder: (context) => Container(
          height: 600,
          padding: const EdgeInsetsDirectional.only(
            start: 20,
            end: 20,
            bottom: 30,
            top: 8,
          ),
          child: datawidget));
}
