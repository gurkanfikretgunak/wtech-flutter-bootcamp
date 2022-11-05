import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            contentPadding: const EdgeInsets.all(10),
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            onTap: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            title: Wrap(
              children: <Widget>[
                const Text(
                  "Kullanıcı Adı ${'@kullanıcıAdı'}",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Latin alfabesinde 23 harf bulunur. Alfabeyi oluşturan büyük ve küçük harfler, sırasıyla aşağıdaki biçimde yazılır. Latin alfabesi şu anda dünyada en yaygın kullanılan alfabedir. Latin alfabesini kullanan ilk dil Eski Latincedir. Günümüzde Latince olarak bilinir.",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const ListTileButton(
                          listTileIcon: FontAwesomeIcons.comment),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ListTileButton(
                        listTileIcon: FontAwesomeIcons.retweet,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ListTileButton(
                          listTileIcon: FontAwesomeIcons.heart),
                    ),
                  ],
                ),
              ],
            )),
        const Divider(
          thickness: 1,
          color: Colors.white,
        )
      ],
    );
  }
}

class ListTileButton extends StatelessWidget {
  const ListTileButton({
    Key? key,
    this.listTileIcon,
    this.listTilePressNumber,
  }) : super(key: key);
  final listTileIcon;
  final listTilePressNumber;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: <Widget>[
        Icon(
          listTileIcon,
          color: Colors.white,
        ),
        const Text(
          "${1}",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
