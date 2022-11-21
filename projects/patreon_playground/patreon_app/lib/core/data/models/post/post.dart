import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'post.g.dart';

@JsonSerializable()
class Post with EquatableMixin {
  int? createdAt;
  String? post;
  Image? postImage;
  String? userId;
  String? id;

  Post({
    this.createdAt,
    this.post,
    this.postImage,
    this.userId,
    this.id,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [createdAt, post, postImage, userId, id];

  Post copyWith({
    String? name,
    String? email,
    String? password,
    Object? avatar,
    String? id,
  }) {
    return Post(
      createdAt: createdAt ?? this.createdAt,
      post: post ?? this.post,
      postImage: postImage ?? this.postImage,
      userId: userId ?? this.userId,
      id: id ?? this.id,
    );
  }
}
