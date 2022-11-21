// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$UserFromJson(Map<String, dynamic> json) => Post(
      createdAt: json['createdAt'] as int?,
      post: json['post'] as String?,
      postImage: json['postImage'] as Image?,
      userId: json['userId'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserToJson(Post instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'post': instance.post,
      'postImage': instance.postImage,
      'userId': instance.userId,
      'id': instance.id,
    };
