import 'package:dio/dio.dart';

import 'client_api.dart';
import 'model.dart';

class RepoClass {
  late APIClient mClient;
  RepoClass() {
    mClient = APIClient(Dio());
  }

  demoPost() async {
    PostRequest dataPost = PostRequest(
        title: 'This is Title',
        body: 'This is Body',
        userId: 'This is User Id');
    var posResponse = await mClient.postDemo(dataPost);
    print('${posResponse.id}:  ${posResponse.title}');
    //You can use your login model data as per your requirements.
  }
}