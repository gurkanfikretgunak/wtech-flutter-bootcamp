import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MostUsedWidgetView extends StatelessWidget {
  const MostUsedWidgetView({super.key});
  final String path =
      'https://www.cumhuriyet.com.tr/Archive/2022/10/13/080729005-jorge-jesus-fenerbahce.jpg';
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
          child: Scaffold(
        //appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: Column(
          children: [
            Expanded(
                flex: 12,
                child: Container(
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.center,
                    child: AspectRatio(
                      aspectRatio: 16 / 7,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        //color: Colors.cyan,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: Image.network(path),
                        ),
                      ),
                    ),
                  ),
                )),
            Expanded(
              flex: 12,
              child: Opacity(
                opacity: 0.2,
                child: Container(
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                spacing: 50,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                ]),
            FittedBox(
              fit: BoxFit.fill,
              child: SizedBox(
                height: 200,
                child: AspectRatio(
                  aspectRatio: 16 / 7,
                  child: Container(
                      color: Colors.blue,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(17),
                        child: Image.network(path),
                      )),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
