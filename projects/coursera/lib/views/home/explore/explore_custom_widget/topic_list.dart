import '../../../../core/components/custom_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../../core/data/model/topic.dart';
import '../../../../core/components/text/text_libary.dart';
import '../../../../core/data/network/services/service.dart';

class TopicList extends StatefulWidget {
  const TopicList({super.key});

  @override
  State<TopicList> createState() => _TopicListState();
}

class _TopicListState extends State<TopicList> {
  late Future<List<Topic>> futureTopics;
  @override
  void initState() {
    super.initState();
    futureTopics = TopicServiceRetrofit().getTopics();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.1),
      child: FutureBuilder<List<Topic>>(
        future: futureTopics,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Chip(
                  label: CustomText(text: snapshot.data![index].topicName!),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CustomCircularProgressIndicator();
        },
      ),
    );
  }
}
