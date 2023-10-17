// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$PostAutoequal on Post {
  @Deprecated(r'Use _$props instead')
  List<Object?> get _autoequalProps => _$props;
  List<Object?> get _$props =>
      [id, content, likes, comments, owner, parent, images];
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map json) => Post(
      id: json['id'] as String,
      content: json['content'] as String?,
      likes: json['likes'] as int,
      comments: (json['comments'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map))
          .toList(),
      owner: Owner.fromJson(json['owner'] as Map),
      parent: json['parent'] == null
          ? null
          : Parent.fromJson(json['parent'] as Map),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'likes': instance.likes,
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'owner': instance.owner.toJson(),
      'parent': instance.parent?.toJson(),
      'images': instance.images,
    };