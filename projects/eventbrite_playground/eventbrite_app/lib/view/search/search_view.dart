import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: BottomNavigationItem.search.index,
      ),
      body: const Center(
        child: Text('Search'),
      ),
    );
  }
}
