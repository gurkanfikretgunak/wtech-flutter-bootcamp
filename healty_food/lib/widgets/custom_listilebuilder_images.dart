import 'package:flutter/material.dart';

class CustomListBuilderImages {
  static Widget customListBuilderImages() {
    return Container(
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: Colors.black,
        // ignore: prefer_const_constructors

        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        height: 280,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: (context, index) => Card(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
                width: 230,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1208790371/tr/foto%C4%9Fraf/sa%C4%9Fl%C4%B1kl%C4%B1-taze-g%C3%B6kku%C5%9Fa%C4%9F%C4%B1-renkli-meyve-ve-sebze-arka-plan.jpg?s=612x612&w=is&k=20&c=ZEK1OEmhgh7TJ_5Fbocz4nzo5snmBFmDZJgLvSZymhs="),
                                fit: BoxFit.fill,
                              ),
                              border: Border.all(
                                width: 8,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          )),
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
      ),
    );
  }
}
