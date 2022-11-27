import 'package:coursera/core/components/custom_chip.dart';
import '../../../../core/data/network/services/topic_service.dart';
import '../../../../core/components/custom_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../../core/data/model/topic.dart';
import 'dart:math' as math;

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
    futureTopics = TopicService().getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingNormal,
      child: SizedBox(
        height: context.dynamicHeight(0.04),
        child: FutureBuilder<List<Topic>>(
          future: futureTopics,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                separatorBuilder: (context, index) {
                  return context.emptySizedWidthBoxNormal;
                },
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return CustomChip(
                    backgroundColor: Color(
                      (math.Random().nextDouble() * 0xFFFFFF).toInt(),
                    ).withOpacity(1.0),
                    text: snapshot.data![index].topicName!,
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CustomCircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
