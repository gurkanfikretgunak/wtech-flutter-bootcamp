import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:robinhood_playground/core/data/model/country_code.dart';
import 'package:robinhood_playground/provider/country_code_provider.dart';

class PhoneCodeSheet extends StatefulWidget {
  const PhoneCodeSheet({super.key});

  @override
  State<PhoneCodeSheet> createState() => _PhoneCodeSheetState();
}

class _PhoneCodeSheetState extends State<PhoneCodeSheet> {
  late Future<List<CountryCodeModel>> _allCountries;
  var currentCountryCode = '+1';
  @override
  void initState() {
    super.initState();
    _allCountries = _readCountryCode();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: _BackButton(),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: FutureBuilder(
                future: _allCountries,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var currentCountryCodeList = snapshot.data;
                    return _CountryNameandCodeListView(currentCountryCodeList: currentCountryCodeList);
                  }
                  return const Text('Error');
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<List<CountryCodeModel>> _readCountryCode() async {
    String jsonConvertToString = await DefaultAssetBundle.of(context)
        .loadString('assets/data/country_code.json');
    List<CountryCodeModel> countryList = [];
    var json = jsonDecode(jsonConvertToString);
    if (json is List) {
      countryList = json.map((e) => CountryCodeModel.fromJson(e)).toList();
    }

    return countryList;
  }
}

class _CountryNameandCodeListView extends StatelessWidget {
  const _CountryNameandCodeListView({
    Key? key,
    required this.currentCountryCodeList,
  }) : super(key: key);

  final List<CountryCodeModel>? currentCountryCodeList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currentCountryCodeList!.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            context.read<CountryCodeProvider>().getCountryCode(
                currentCountryCodeList![index].dial_code ?? '0',
                index);
          },
          leading: index ==
                  context
                      .watch<CountryCodeProvider>()
                      .selectedIndex
              ? const Icon(
                  Icons.done,
                  color: Colors.green,
                )
              : const SizedBox.shrink(),
          title: Text(
              '${currentCountryCodeList![index].name} (${currentCountryCodeList![index].dial_code})'),
        );
      },
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.clear,
          color: Colors.black,
        ));
  }
}
