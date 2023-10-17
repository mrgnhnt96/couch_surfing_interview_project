// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$PostAutoequal on Post {
  @Deprecated(r'Use _$props instead')
  List<Object?> get _autoequalProps => _$props;
  List<Object?> get _$props =>
      [id, content, likes, comments, owner, parent, images, posted];
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map json) => Post(
      id: json['id'] as String,
      content: json['content'] as String?,
      likes: json['likes'] as int,
      comments: json['comments'] as int,
      owner: Owner.fromJson(json['owner'] as Map),
      parent: json['parent'] == null
          ? null
          : Parent.fromJson(json['parent'] as Map),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      posted: DateTime.parse(json['posted'] as String),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'likes': instance.likes,
      'comments': instance.comments,
      'owner': instance.owner.toJson(),
      'parent': instance.parent?.toJson(),
      'images': instance.images,
      'posted': instance.posted.toIso8601String(),
    };
