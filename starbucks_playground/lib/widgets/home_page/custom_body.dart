import 'package:flutter/material.dart';

class CustomBody {
  static Widget customBody() {
    return SafeArea(
      child: Column(
        children: [
          SingleChildScrollView(child: CustomAppbarTwo()),
          SingleChildScrollView(child: CustomContainerImage()),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return const Expanded(child: CustomCard());
                }),
          ),
        ],
      ),
    );
  }
}

// İlk Resim
// ignore: non_constant_identifier_names
Container CustomContainerImage() {
  return Container(
    padding: const EdgeInsets.all(8),
    width: 500,
    height: 300,
    decoration: const BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
            image: AssetImage("assets/container.jpg"), fit: BoxFit.fill)),
  );
}

// Sign  INbox  person iconlarının bulundugu container
// ignore: non_constant_identifier_names
Row CustomAppbarTwo() {
  return Row(children: [
    IconButton(
      icon: const Icon(
        Icons.login,
        size: 32,
      ),
      color: Colors.black,
      onPressed: () {},
    ),
    const Text(
      "Sign In",
      style: TextStyle(color: Colors.black),
    ),
    IconButton(
      icon: const Icon(
        Icons.mail,
        size: 32,
      ),
      color: Colors.black,
      onPressed: () {},
    ),
    const Text(
      "InBox",
      style: TextStyle(color: Colors.black),
    ),
    const Spacer(),
    IconButton(
      icon: const Icon(
        Icons.account_circle_outlined,
        size: 36,
      ),
      onPressed: () {},
      color: Colors.black,
    ),
  ]);
}

// Listtilerin içine yerleştirilen card
class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(16),
        // ignore: sort_child_properties_last
        child: AspectRatio(
          aspectRatio: 16 / 8,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(children: [
                      Expanded(
                          child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Cozy Smoth Godnes",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Comforting Drind to start to year with",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 0,
                              shape: const BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                            onPressed: () {},
                            // ignore: sort_child_properties_last
                            child: const Text(
                              "Find Out More",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          )
                        ],
                      )),
                      AspectRatio(
                        aspectRatio: 14 / 16,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/coffe2022.png",
                            fit: BoxFit.fill,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
