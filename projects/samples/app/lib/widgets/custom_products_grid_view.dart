import 'package:flutter/material.dart';

class CustomProductGridView extends StatefulWidget {
  const CustomProductGridView({super.key});

  @override
  State<CustomProductGridView> createState() => _CustomProductGridViewState();
}

class _CustomProductGridViewState extends State<CustomProductGridView> {
  @override
  Widget build(BuildContext context) {
    Size responsive = MediaQuery.of(context).size;
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8),
        itemCount: 6,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext ctx, index) {
          return Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              //TODO: Static sides will be upgrade.
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 4.0,
                child: Column(
                  children: [
                    SizedBox(
                      height: responsive.height / 6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          fit: BoxFit.fitHeight,
                          'https://picsum.photos/id/0/600/400',
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('30.000 TL'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: responsive.height / 100),
                            child: const Text('Oyuncu Bilgisayarı'),
                          ),
                          const Text('Amasya'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.favorite_outline_sharp),
                    )),
              ),
            ],
          );
        });
  }
}
