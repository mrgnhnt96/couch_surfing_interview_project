import 'package:autoequal/autoequal.dart';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@autoequal
@JsonSerializable()
class Owner extends Equatable {
  const Owner({
    required this.id,
    required this.username,
    required this.image,
  });

  // ignore: strict_raw_type
  factory Owner.fromJson(Map json) => _$OwnerFromJson(json);

  final String id;
  final String username;
  final String image;

  Map<String, dynamic> toJson() => _$OwnerToJson(this);

  @override
  List<Object?> get props => _$props;
}
