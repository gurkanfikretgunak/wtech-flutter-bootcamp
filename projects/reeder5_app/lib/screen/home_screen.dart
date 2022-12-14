import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/breaking_news_card.dart';
import '../components/news_list_tile.dart';
import '../models/article_model.dart';
import '../views/all_views.dart';
import '../views/setting_views.dart';
import '../views/starred_views.dart';
import '../views/unread_views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "REEDER 5",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Articles",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                  itemCount: NewsData.breakingNewsData.length,
                  itemBuilder: (context, index, id) =>
                      BreakingNewsCard(NewsData.breakingNewsData[index]),
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                  )),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Recent News",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(16),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          //selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home, color: Colors.grey),
                  ),
                ),
                label: 'HOME'),
            BottomNavigationBarItem(
                icon: Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StarredViews()),
                      );
                    },
                    icon: const Icon(Icons.star, color: Colors.grey),
                  ),
                ),
                label: 'STARRED'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UnreadViews()),
                    );
                  },
                  icon: const Icon(Icons.circle, color: Colors.grey),
                ),
                label: 'UNREAD'),
            BottomNavigationBarItem(
                icon: Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AllViews()),
                      );
                    },
                    icon: const Icon(Icons.notes, color: Colors.grey),
                  ),
                ),
                label: 'ALL'),
            BottomNavigationBarItem(
                icon: Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsViews()),
                      );
                    },
                    icon: const Icon(Icons.settings, color: Colors.grey),
                  ),
                ),
                label: 'SETTİNGS'),
          ],
        ),
      ),
    );
  }
}
