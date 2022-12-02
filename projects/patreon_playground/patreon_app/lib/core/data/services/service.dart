import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:patreon_app/core/data/models/post/post.dart';

import 'package:retrofit/retrofit.dart';

import '../models/user/user.dart';

part 'service.g.dart';

@RestApi(baseUrl: 'https://636c08167f47ef51e140c438.mockapi.io/api/v1/')
abstract class NetworkService {
  factory NetworkService(Dio dio, {String baseUrl}) = _NetworkService;

  @POST('/users')
  Future<User> createUser(@Body() User user);

  @GET('/users')
  Future<List<User>> getUsers();

  @GET("/users/{id}")
  Future<User> fetchUser(@Path("id") String id);

  @GET('/users/1/posts')
  Future<List<Post>> getPosts();

  @GET("/users/1/posts/{id}")
  Future<Post> fetchPost(@Path("id") String id);
}

class Service {
  Dio dio = Dio();
  Future<User?> loginUser(
      {required String email, required String password}) async {
    try {
      var response = await NetworkService(dio).getUsers();
      return response
          .where((element) => element.email == email)
          .where((element) => element.password == password)
          .first;
    } catch (e) {
      return null;
    }
  }

  Future<User> fetchUser(String id) async {
    try {
      final User user = await NetworkService(dio).fetchUser(id);
      return user;
    } on DioError catch (e) {
      debugPrint(e.toString());
      return User();
    }
  }

  Future<List<Post>> getPosts() async {
    try {
      final List<Post> posts = await NetworkService(dio).getPosts();
      return posts;
    } on DioError catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  Future<Post> fetchPost(String id) async {
    try {
      final Post post = await NetworkService(dio).fetchPost(id);
      return post;
    } on DioError catch (e) {
      debugPrint(e.toString());
      return Post();
    }
  }
}
