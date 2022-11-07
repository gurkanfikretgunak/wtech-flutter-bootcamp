import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(),
      child: SafeArea(
          child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: Column(
          children: [
            Expanded(
                flex: 12,
                child: Align(
                  alignment: Alignment.topCenter,
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
                        child: Image.network(
                            "https://ichef.bbci.co.uk/news/594/cpsprodpb/59ec/live/22c539c0-5cff-11ed-99a9-a92bfe9444fa.jpg.webp"),
                      ),
                    ),
                  ),
                )),
            Expanded(
              flex: 12,
              child: Opacity(
                opacity: 0.7,
                child: Container(
                  //width: double.infinity,
                  height: 100,
                  color: Colors.amber,
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: SizedBox(
                height: 200,
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Container(color: Colors.blue),
                ),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              spacing: 20,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text("data"),
                const Text("data2"),
              ],
            )
          ],
        ),
      )),
    );
  }
}
