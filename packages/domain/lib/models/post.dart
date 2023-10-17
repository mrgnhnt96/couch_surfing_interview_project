import 'package:autoequal/autoequal.dart';

import 'package:equatable/equatable.dart';
import 'package:interview_domain/models/owner.dart';
import 'package:interview_domain/models/parent.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@autoequal
@JsonSerializable()
class Post extends Equatable {
  const Post({
    required this.id,
    required this.content,
    required this.likes,
    required this.comments,
    required this.owner,
    required this.parent,
    required this.images,
    required this.posted,
  });

  // ignore: strict_raw_type
  factory Post.fromJson(Map json) => _$PostFromJson(json);

  final String id;
  final String? content;
  final int likes;
  final int comments;
  final Owner owner;
  final Parent? parent;
  final List<String> images;
  final DateTime posted;

  Map<String, dynamic> toJson() => _$PostToJson(this);

  @override
  List<Object?> get props => _$props;
}
