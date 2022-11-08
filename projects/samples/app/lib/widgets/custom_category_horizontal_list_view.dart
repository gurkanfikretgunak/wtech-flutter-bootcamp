import 'package:app/core/themes/custom_theme_data.dart';
import 'package:app/widgets/custom_button_with_custom_pointer.dart';
import 'package:flutter/material.dart';

class CustomCategoryHorizontalListView extends StatefulWidget {
  const CustomCategoryHorizontalListView({super.key});

  @override
  State<CustomCategoryHorizontalListView> createState() =>
      _CustomCategoryHorizontalListViewState();
}

class _CustomCategoryHorizontalListViewState
    extends State<CustomCategoryHorizontalListView> {
  final List _categoriesList = <Map<String, dynamic>>[
    {
      'name': 'OTOPLUS',
      'icon': const Icon(
        Icons.person,
      ),
      'color': Colors.red,
    },
    {
      'name': 'ARABA',
      'icon': const Icon(
        Icons.directions_car_sharp,
      ),
      'color': Colors.blue,
    },
    {
      'name': 'TELEFON',
      'icon': const Icon(Icons.phone),
      'color': Colors.purple,
    },
    {
      'name': 'EV EŞYALARI',
      'icon': const Icon(Icons.chair),
      'color': Colors.yellow,
    },
    {
      'name': 'ELEKTRONİK',
      'icon': const Icon(Icons.laptop_chromebook),
      'color': Colors.teal,
    },
    {
      'name': 'MOTORSİKLET',
      'icon': const Icon(Icons.moped),
      'color': Colors.orange,
    },
    {
      'name': 'DİĞER ARAÇLAR',
      'icon': const Icon(Icons.local_shipping),
      'color': Colors.blue,
    },
    {
      'name': 'BEBEK VE ÇOCUK',
      'icon': const Icon(Icons.child_friendly),
      'color': Colors.blueAccent,
    },
    {
      'name': 'SPOR VE OUTDOOR',
      'icon': const Icon(Icons.sports_baseball),
      'color': Colors.green,
    },
    {
      'name': 'HOBİ VE EĞLENCE',
      'icon': const Icon(Icons.headset),
      'color': Colors.pink,
    },
    {
      'name': 'GİYİM VE AKSESUAR',
      'icon': const Icon(Icons.roller_skating),
      'color': Colors.pinkAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 8,
      child: ListView.builder(
          itemCount: _categoriesList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Theme(
                data: CustomTheme.customThemeData().copyWith(
                    iconTheme:
                        IconThemeData(color: CustomTheme.categoryIconColor)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.height / 8.5,
                  child: Center(
                    child: (_categoriesList.isNotEmpty)
                        ? Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.vertical,
                            spacing: 20,
                            children: [
                              CustomButtonWithCustomPointer(
                                icon: _categoriesList[index]['icon'],
                                bgColor: _categoriesList[index]['color'],
                              ),
                              // Todo: Text stacked. Here will be updated.
                              Text(
                                _categoriesList[index]['name'],
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          )
                        : const Text('Kategoriler bulunamadı!'),
                  ),
                ));
          }),
    );
  }
}
