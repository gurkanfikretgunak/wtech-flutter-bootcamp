import '../../../core/constants/color_constant.dart';
import '../../../core/model/topic.dart';
import '../../../core/services/service.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../widgets/text/text_libary.dart';

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
          return CircularProgressIndicator(
              color: ColorConstant.instance.appBlue);
        },
      ),
    );
  }
}
