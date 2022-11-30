import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({
    Key? key,
    required this.defaultHorizontalPadding,
    required this.stats,
  }) : super(key: key);

  final EdgeInsets defaultHorizontalPadding;
  final List<Map<String, dynamic>> stats;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Logger().i('tapped $index');
                    },
                    child: Padding(
                      padding: defaultHorizontalPadding * 3,
                      child: Column(
                        children: [
                          Text(
                            '${stats[index]['number']}',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            stats[index]['name'],
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return VerticalDivider(
                    color: Theme.of(context).primaryColorLight,
                    thickness: 1,
                  );
                },
                itemCount: stats.length),
          ),
        ],
      ),
    );
  }
}
