import 'package:flutter/material.dart';
import 'package:patreon_app/views/search_page.dart';

class NotFollowingWidget extends StatelessWidget {
  const NotFollowingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      child: Center(
          child: Column(
        children: [
          const Divider(
            color: Colors.grey,
          ),
          Image.asset("assets/not_following.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "You're not following anyone yet",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 27),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Text(
                        "Find some creators",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
            ),
          )
        ],
      )),
    );
  }
}
