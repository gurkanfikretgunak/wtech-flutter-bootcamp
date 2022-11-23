import 'package:coursera/core/base/base_service.dart';

import '../../model/topic.dart';

class TopicService extends IRetrofitService<Topic> {
  @override
  Future<List<Topic>> getAll() {
    return client.getAllTopics();
  }

  @override
  Future<Topic>? getById(String id) {
    return client.topicGetById(id);
  }
}
