import 'package:flutter/material.dart';

class CustomSearch extends StatefulWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  TextEditingController searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 54,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: Theme.of(context).primaryColor.withOpacity(0.23),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          searchTextController.text.trim().isEmpty
              ? IconButton(
                  icon: Icon(Icons.search_sharp, color: Theme.of(context).primaryColor.withOpacity(0.9)),
                  onPressed: null)
              : IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(Icons.clear, color: Theme.of(context).primaryColor.withOpacity(0.5)),
                  onPressed: () => setState(() {
                        searchTextController.clear();
                      })),
          Expanded(
            child: TextField(
              controller: searchTextController,
              textAlignVertical: TextAlignVertical.center,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Theme.of(context).primaryColor.withOpacity(0.8)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
