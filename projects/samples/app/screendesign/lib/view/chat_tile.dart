import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String img;
  final String lastMsg;
  final String time;
  const ChatTile(
      {super.key,
      required this.name,
      required this.img,
      required this.lastMsg,
      required this.time});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            img != null
                ? Padding(
                    padding: EdgeInsets.all(8),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(img),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.account_circle,
                      size: 55,
                      color: Colors.grey.shade500,
                    ),
                  ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    lastMsg,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                time,
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
