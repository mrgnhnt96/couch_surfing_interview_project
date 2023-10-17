// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$ParentAutoequal on Parent {
  @Deprecated(r'Use _$props instead')
  List<Object?> get _autoequalProps => _$props;
  List<Object?> get _$props => [id, owner];
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parent _$ParentFromJson(Map json) => Parent(
      id: json['id'] as String,
      owner: Owner.fromJson(json['owner'] as Map),
    );

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner.toJson(),
    };
