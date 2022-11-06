import 'package:flutter/material.dart';

class CustomListBuilderImages {
  static Widget customListBuilderImages() {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (context, index) => Card(
          color: Colors.amber,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
              width: 230,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(flex: 3, child: Placeholder()),
                    const Expanded(
                        flex: 3,
                        child: ListTile(
                          title: Text("Edvocoda Salad"),
                          subtitle: Text("A porfect dished for your ..."),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.orangeAccent,
                            child: Text("25\$"),
                          ),
                        )),
                    Row(
                      children: const [
                        Text("Text"),
                        Icon(Icons.star),
                        Spacer(),
                        Text("1,k KM"),
                        Icon(Icons.nordic_walking),
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
