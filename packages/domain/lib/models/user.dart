import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@autoequal
@JsonSerializable()
class User extends Equatable {
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.joined,
    required this.friends,
    required this.username,
    required this.about,
    required this.email,
  });

  // ignore: strict_raw_type
  factory User.fromJson(Map json) => _$UserFromJson(json);

  final int id;
  final String firstName;
  final String lastName;
  final String? image;
  final DateTime joined;
  final List<int> friends;
  final String username;
  final String about;
  final String email;

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => _$props;
}
