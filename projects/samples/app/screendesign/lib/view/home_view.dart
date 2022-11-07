import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsappClone extends StatelessWidget {
  const WhatsappClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Color(0xff128C7E),
          leadingWidth: 18,
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_sharp)),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445_960_720.jpg"),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Muhammed",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Çevrimiçi",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.videocam),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.phone),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        width: 355,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              border: InputBorder.none,
                              hintText: "Mesaj",
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.tag_faces_rounded,
                                  color: Colors.grey[400],
                                ),
                              ),
                              suffixIcon: Container(
                                  width: 100,
                                  child: Row(children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.attachment),
                                      color: Colors.grey[400],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.camera_alt,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ]))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff128C7E),
                      radius: 22,
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () {},
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
