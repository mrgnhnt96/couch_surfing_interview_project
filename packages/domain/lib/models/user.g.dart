// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$UserAutoequal on User {
  @Deprecated(r'Use _$props instead')
  List<Object?> get _autoequalProps => _$props;
  List<Object?> get _$props =>
      [id, firstName, lastName, image, joined, friends, username, about, email];
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map json) => User(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      image: json['image'] as String?,
      joined: DateTime.parse(json['joined'] as String),
      friends: (json['friends'] as List<dynamic>).map((e) => e as int).toList(),
      username: json['username'] as String,
      about: json['about'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
      'joined': instance.joined.toIso8601String(),
      'friends': instance.friends,
      'username': instance.username,
      'about': instance.about,
      'email': instance.email,
    };
