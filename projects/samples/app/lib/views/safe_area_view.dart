import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SafeAreaView extends StatelessWidget {
  const SafeAreaView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      //Çalıştığın sistemi value değeriyle dinle -Provider gibi çalışıyor
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.amber,
        systemNavigationBarContrastEnforced: true,
      ),
      child: SafeArea(
        top: false,
        bottom: true,
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                  child: Container(
                child: Text(""),
              )),
              Opacity(
                opacity: 1,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
              Wrap(
                //Column'u unutturabilir
                //Stack ve container 'ın karışımı gibi
                spacing: 12,
                direction: Axis.vertical,
                alignment: WrapAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: const [
                  Text("data"),
                  Text("data"),
                  Text("data"),
                ],
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: Container(
                  width: double.infinity,
                  color: Colors.amber,
                  child: AspectRatio(aspectRatio: 16 / 9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
