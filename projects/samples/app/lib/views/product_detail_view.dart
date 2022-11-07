import 'package:app/constants/custom_contants.dart';
import 'package:app/core/themes/custom_themes.dart';
import 'package:app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  }) : super(key: key);
  final String image;
  final String name;
  final String price;
  final String description;
  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    const data = "Add To Cart";
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: DetailAppBarComponent(),
              )),
          Expanded(
            flex: 3,
            child: Stack(children: [
              Center(
                child: _aspectRatioImage(widget.image),
              ),
              const Positioned(
                right: 20,
                top: 50,
                child: CustomColorSelection(),
              ),
            ]),
          ),
          Expanded(
            flex: 2,
            child: _detailsComponents(widget.name, widget.price, widget.description),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: CustomAddCartButton(data: data),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAddCartButton extends StatelessWidget {
  const CustomAddCartButton({
    Key? key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
              width: 55,
              height: 55,
              color: Colors.grey[300],
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined))),
        ),
        SizedBox(
          height: 50,
          width: 280,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[900]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                )),
            child: Text(
              data,
              style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

class CustomColorSelection extends StatelessWidget {
  const CustomColorSelection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 50,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40), boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: Theme.of(context).primaryColor.withOpacity(0.23),
        )
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.black,
          ),
          const CircleAvatar(backgroundColor: Colors.yellow),
          const CircleAvatar(backgroundColor: Colors.grey),
          CircleAvatar(backgroundColor: Colors.teal[400]),
        ],
      ),
    );
  }
}

class DetailAppBarComponent extends StatelessWidget {
  const DetailAppBarComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomWidgets.backIcon(context),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            CustomTextConstants().plantDetails,
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

AspectRatio _aspectRatioImage(images) {
  return AspectRatio(
    aspectRatio: 2 / 3,
    child: FittedBox(
      clipBehavior: Clip.antiAlias,
      fit: BoxFit.fill,
      alignment: FractionalOffset.topCenter,
      child: Image.asset(
        images,
      ),
    ),
  );
}

SingleChildScrollView _detailsComponents(names, price, description) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 250,
                child: Text(
                  names,
                  style: CustomTheme.customThemeData().textTheme.headline1,
                ),
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 80,
                      height: 40,
                      color: Colors.grey[300],
                      child: Center(
                        child: Text(
                          price,
                          style: CustomTheme.customThemeData().textTheme.headline2,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            textAlign: TextAlign.justify,
            style: CustomTheme.customThemeData().textTheme.headline3,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: const [
                Icon(Icons.wind_power_outlined),
                Icon(Icons.water_drop_outlined),
                Icon(Icons.forest_outlined),
              ]),
            ),
          ),
        ],
      ),
    ),
  );
}
