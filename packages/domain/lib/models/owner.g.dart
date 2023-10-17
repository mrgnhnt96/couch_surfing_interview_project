// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$OwnerAutoequal on Owner {
  @Deprecated(r'Use _$props instead')
  List<Object?> get _autoequalProps => _$props;
  List<Object?> get _$props => [id, username, image];
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Owner _$OwnerFromJson(Map json) => Owner(
      id: json['id'] as String,
      username: json['username'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'image': instance.image,
    };
