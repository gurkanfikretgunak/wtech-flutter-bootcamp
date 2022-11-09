import 'package:app/views/product_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/repository/add_product_repository.dart';
import '../core/themes/custom_themes.dart';

class CartView extends ConsumerWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: DetailAppBarComponent(topicText: "Cart"),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              height: MediaQuery.of(context).size.height * 0.10,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ref.watch(addProvider).addNames.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      ref.watch(addProvider).addImages[index].toString(),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.grey[900],
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8, top: 15),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  ref.watch(addProvider).addNames[index],
                                                  style: CustomTheme.customThemeData()
                                                      .textTheme
                                                      .headlineMedium
                                                      ?.copyWith(color: Colors.white),
                                                ),
                                                const SizedBox(height: 5),
                                                Text(ref.watch(addProvider).addPrices[index],
                                                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                        )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add_box_rounded),
                                        color: Colors.white,
                                        iconSize: 45,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    ));
  }
}
