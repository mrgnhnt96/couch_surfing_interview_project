import 'package:autoequal/autoequal.dart';

import 'package:equatable/equatable.dart';
import 'package:interview_domain/models/owner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parent.g.dart';

@autoequal
@JsonSerializable()
class Parent extends Equatable {
  const Parent({
    required this.id,
    required this.owner,
  });

  // ignore: strict_raw_type
  factory Parent.fromJson(Map json) => _$ParentFromJson(json);

  final String id;
  final Owner owner;

  Map<String, dynamic> toJson() => _$ParentToJson(this);

  @override
  List<Object?> get props => _$props;
}
