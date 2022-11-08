import 'package:app/widgets/custom_app_bar.dart';
import 'package:app/widgets/custom_bottom_navigation_bar.dart';
import 'package:app/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_category_horizontal_list_view.dart';
import '../widgets/custom_products_grid_view.dart';

class HomeView extends StatelessWidget {
  final String _advertisementPhotoUrl =
      'https://pbs.twimg.com/media/Ff2Q5lvXwAE8lW2?format=jpg&name=medium';
  final String _categorySideLabel = 'Kategorilere Göz At';
  final String _categorySeeAllButtonLabel = 'Tümünü gör';
  final String _productSideLabel = 'Güncel İlanlar';

  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSizeHeight: MediaQuery.of(context).size.height / 6,
      ),
      body: SizedBox(
        //TODO: This body side will be update.
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child:
                        Image.network(fit: BoxFit.fill, _advertisementPhotoUrl),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _categorySideLabel,
                          style: TextStyle(fontSize: 20),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            _categorySeeAllButtonLabel,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomCategoryHorizontalListView(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                    child: Text(
                      _productSideLabel,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: CustomProductGridView(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      floatingActionButton: Container(
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: CustomFloatingActionButton(),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
