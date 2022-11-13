import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todoist_app/service/data_service.dart';

import '../model/users_model.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton(
      {Key? key,
      required this.buttonTexts,
      required this.buttonColors,
      this.buttonIcons,
      required this.hasDataWidget,
      this.controller,
      required this.nullDataWidget})
      : super(key: key);
  final String buttonTexts;
  final Color? buttonColors;
  final IconData? buttonIcons;
  final Widget hasDataWidget;
  final Widget nullDataWidget;

  final TextEditingController? controller;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          print(widget.controller!.text);
          _settingModalBottomSheet(context, widget.hasDataWidget, widget.nullDataWidget, widget.controller);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.buttonColors),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.buttonIcons),
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
    );
  }
}

void _settingModalBottomSheet(context, Widget hasDatawidget, Widget nullDataWidget, TextEditingController? controller) {
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
          child: _buildBody(context, controller!.text, hasDatawidget, nullDataWidget)));
}

FutureBuilder<List<Users>> _buildBody(
    BuildContext context, String controller, Widget hasDataWidget, Widget nullDataWidget) {
  final client = RestClient(Dio(BaseOptions(contentType: "application/json")),
      baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io/");
  return FutureBuilder<List<Users>>(
    future: client.getUsers(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) => snapshot.data![index].email == controller ? hasDataWidget : nullDataWidget);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    },
  );
}