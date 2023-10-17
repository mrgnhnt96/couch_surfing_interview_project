import 'package:autoequal/autoequal.dart';

import 'package:equatable/equatable.dart';
import 'package:interview_domain/models/owner.dart';
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
  final String? parent;
  final List<String> images;
  final DateTime posted;

  String get likesFormatted {
    if (likes > 1000 && likes < 1000000) {
      var count = (likes / 1000).toStringAsFixed(1);

      if (count.endsWith('.0')) {
        count = count.split('.')[0];
      }

      return '${count}k';
    }

    if (likes > 1000000) {
      var count = (likes / 1000000).toStringAsFixed(1);

      if (count.endsWith('.0')) {
        count = count.split('.')[0];
      }

      return '${count}m';
    }

    return '$likes';
  }

  Map<String, dynamic> toJson() => _$PostToJson(this);

  @override
  List<Object?> get props => _$props;
}
