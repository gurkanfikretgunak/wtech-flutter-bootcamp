import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.65,
      child: Center(
          child: Column(
        children: [
          const Divider(color: Colors.grey),
          const RefreshProgressIndicator(color: Colors.red),
          Image.asset("assets/dog2.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Just a moment while we get things ready...",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          )
        ],
      )),
    );
  }
}
